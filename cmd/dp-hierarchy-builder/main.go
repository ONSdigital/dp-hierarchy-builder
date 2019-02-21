package main

import (
	"context"
	"os"
	"os/signal"
	"syscall"

	"github.com/ONSdigital/dp-graph/graph"
	"github.com/ONSdigital/dp-hierarchy-builder/config"
	"github.com/ONSdigital/dp-hierarchy-builder/event"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/dp-reporter-client/reporter"
	"github.com/ONSdigital/go-ns/healthcheck"
	"github.com/ONSdigital/go-ns/kafka"
	"github.com/ONSdigital/go-ns/log"
)

func main() {
	log.Namespace = "dp-hierarchy-builder"
	log.Debug("Starting hierarchy builder", nil)

	cfg, err := config.Get()
	if err != nil {
		log.Error(err, nil)
		os.Exit(1)
	}

	// sensitive fields are omitted from cfg.String().
	log.Debug("loaded config", log.Data{"cfg": cfg})

	// a channel used to signal a graceful exit is required.
	errorChannel := make(chan error)

	kafkaBrokers := cfg.KafkaAddr
	kafkaConsumer, err := kafka.NewConsumerGroup(
		kafkaBrokers,
		cfg.ConsumerTopic,
		cfg.ConsumerGroup,
		kafka.OffsetNewest,
	)
	exitIfError(err)

	kafkaProducer, err := kafka.NewProducer(kafkaBrokers, cfg.ProducerTopic, 0)
	exitIfError(err)

	kafkaErrorProducer, err := kafka.NewProducer(cfg.KafkaAddr, cfg.ErrorProducerTopic, 0)
	exitIfError(err)

	avroProducer := event.NewAvroProducer(kafkaProducer)

	db, err := graph.NewHierarchyStore(context.Background())
	exitIfError(err)

	// when errors occur - we send a message on an error topic.
	errorHandler, err := reporter.NewImportErrorReporter(kafkaErrorProducer, log.Namespace)
	exitIfError(err)

	eventHandler := event.NewDataImportCompleteHandler(&hierarchy.Store{db}, avroProducer)

	eventConsumer := event.NewConsumer()
	eventConsumer.Consume(kafkaConsumer, eventHandler, errorHandler)

	healthChecker := healthcheck.NewServer(
		cfg.BindAddr,
		cfg.HealthCheckInterval,
		cfg.HealthCheckRecoveryInterval,
		errorChannel,
	//	neo4j.NewHealthCheckClient(neo4jConnPool),
	)

	signals := make(chan os.Signal, 1)
	signal.Notify(signals, os.Interrupt, syscall.SIGTERM)

	// this will block (main) until a fatal error occurs
	select {
	case err := <-kafkaConsumer.Errors():
		log.ErrorC("kafka consumer", err, nil)
	case err := <-kafkaProducer.Errors():
		log.ErrorC("kafka result producer", err, nil)
	case err := <-kafkaErrorProducer.Errors():
		log.ErrorC("kafka error producer", err, nil)
	case err := <-errorChannel:
		log.ErrorC("error channel", err, nil)
	case <-signals:
		log.Debug("os signal received", nil)
	}

	ctx, cancel := context.WithTimeout(context.Background(), cfg.GracefulShutdownTimeout)

	// gracefully dispose resources
	err = eventConsumer.Close(ctx)
	logIfError(err)

	err = kafkaConsumer.Close(ctx)
	logIfError(err)

	err = kafkaProducer.Close(ctx)
	logIfError(err)

	err = kafkaErrorProducer.Close(ctx)
	logIfError(err)

	err = healthChecker.Close(ctx)
	logIfError(err)

	err = db.Close(ctx)
	logIfError(err)

	// cancel the timer in the shutdown context
	cancel()

	log.Debug("graceful shutdown was successful", nil)
	os.Exit(1)
}

func exitIfError(err error) {
	if err != nil {
		log.Error(err, nil)
		os.Exit(1)
	}
}

func logIfError(err error) {
	if err != nil {
		log.Error(err, nil)
	}
}
