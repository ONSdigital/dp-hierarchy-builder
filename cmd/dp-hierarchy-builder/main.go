package main

import (
	"context"
	"github.com/ONSdigital/go-ns/server"
	"github.com/gorilla/mux"
	"os"
	"os/signal"
	"syscall"

	"github.com/ONSdigital/dp-graph/graph"
	"github.com/ONSdigital/dp-healthcheck/healthcheck"
	"github.com/ONSdigital/dp-hierarchy-builder/config"
	"github.com/ONSdigital/dp-hierarchy-builder/event"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	kafka "github.com/ONSdigital/dp-kafka"
	"github.com/ONSdigital/dp-reporter-client/reporter"
	"github.com/ONSdigital/log.go/log"
)

var (
	// BuildTime represents the time in which the service was built
	BuildTime string
	// GitCommit represents the commit (SHA-1) hash of the service that is running
	GitCommit string
	// Version represents the version of the service that is running
	Version string
)

func main() {
	log.Namespace = "dp-hierarchy-builder"
	ctx := context.Background()

	log.Event(ctx, "starting hierarchy builder", log.INFO)

	cfg, err := config.Get()
	exitIfError(ctx, err, "error getting config")

	// sensitive fields are omitted from cfg.String().
	log.Event(ctx, "loaded config", log.INFO, log.Data{"cfg": cfg})

	// a channel used to signal a graceful exit is required.
	errorChannel := make(chan error)

	kafkaBrokers := cfg.KafkaAddr
	cgChannels := kafka.CreateConsumerGroupChannels(true)
	kafkaConsumer, err := kafka.NewConsumerGroup(
		ctx,
		kafkaBrokers,
		cfg.ConsumerTopic,
		cfg.ConsumerGroup,
		kafka.OffsetNewest,
		true,
		cgChannels,
	)
	exitIfError(ctx, err, "error creating kafka consumer")

	pChannels := kafka.CreateProducerChannels()
	useDefaultMaxMessageSize := 0 // pass zero to use the default
	kafkaProducer, err := kafka.NewProducer(ctx, kafkaBrokers, cfg.ProducerTopic, useDefaultMaxMessageSize, pChannels)
	if err != nil {
		log.Event(ctx, "error creating kafka producer", log.FATAL, log.Error(err))
		os.Exit(1)
	}

	errorProducerChannels := kafka.CreateProducerChannels()
	kafkaErrorProducer, err := kafka.NewProducer(ctx, kafkaBrokers, cfg.ErrorProducerTopic, useDefaultMaxMessageSize, errorProducerChannels)
	exitIfError(ctx, err, "error creating kafka producer")

	avroProducer := event.NewAvroProducer(kafkaProducer)

	db, err := graph.NewHierarchyStore(ctx)
	exitIfError(ctx, err, "error creating Kafka error producer")

	// when errors occur - we send a message on an error topic.
	errorHandler, err := reporter.NewImportErrorReporter(kafkaErrorProducer, log.Namespace)
	exitIfError(ctx, err, "error creating import error reporter")

	eventHandler := event.NewDataImportCompleteHandler(&hierarchy.Store{db}, avroProducer)

	eventConsumer := event.NewConsumer()
	eventConsumer.Consume(ctx, kafkaConsumer, eventHandler, errorHandler)

	hc := startHealthChecks(ctx, cfg, kafkaConsumer, kafkaProducer, kafkaErrorProducer, db)

	apiErrors, httpServer := startAPI(ctx, hc, cfg)

	signals := make(chan os.Signal, 1)
	signal.Notify(signals, os.Interrupt, syscall.SIGTERM)

	// this will block (main) until a fatal error occurs
	select {
	case err := <-apiErrors:
		log.Event(ctx, "http server error", log.ERROR, log.Error(err))
	case err := <-kafkaConsumer.Channels().Errors:
		log.Event(ctx, "kafka consumer error", log.ERROR, log.Error(err))
	case err := <-kafkaProducer.Channels().Errors:
		log.Event(ctx, "kafka result producer error", log.ERROR, log.Error(err))
	case err := <-kafkaErrorProducer.Channels().Errors:
		log.Event(ctx, "kafka error producer error", log.ERROR, log.Error(err))
	case err := <-errorChannel:
		log.Event(ctx, "error channel error", log.ERROR, log.Error(err))
	case <-signals:
		log.Event(ctx, "os signal received", log.INFO)
	}

	ctx, cancel := context.WithTimeout(ctx, cfg.GracefulShutdownTimeout)

	// gracefully dispose resources
	hc.Stop()

	err = httpServer.Close(ctx)
	logIfError(ctx, err, "error closing http server")

	err = eventConsumer.Close(ctx)
	logIfError(ctx, err, "error closing event consumer")

	err = kafkaConsumer.Close(ctx)
	logIfError(ctx, err, "error closing kafka consumer")

	err = kafkaProducer.Close(ctx)
	logIfError(ctx, err, "error closing kafka producer")

	err = kafkaErrorProducer.Close(ctx)
	logIfError(ctx, err, "error closing kafka error producer")

	err = db.Close(ctx)
	logIfError(ctx, err, "error closing graph db connection")

	// cancel the timer in the shutdown context
	cancel()

	log.Event(ctx, "graceful shutdown was successful", log.INFO)
	os.Exit(1)
}

func startAPI(ctx context.Context, hc healthcheck.HealthCheck, cfg *config.Config) (chan error, *server.Server) {
	router := mux.NewRouter()
	router.HandleFunc("/health", hc.Handler)
	apiErrors := make(chan error, 1)

	httpServer := server.New(cfg.BindAddr, router)
	// Disable this here to allow main to manage graceful shutdown of the entire app.
	httpServer.HandleOSSignals = false

	go func() {
		log.Event(ctx, "starting api", log.INFO)
		if err := httpServer.ListenAndServe(); err != nil {
			log.Event(ctx, "http server error", log.ERROR, log.Error(err))
			apiErrors <- err
		}
	}()
	return apiErrors, httpServer
}

func startHealthChecks(
	ctx context.Context,
	cfg *config.Config,
	kafkaConsumer *kafka.ConsumerGroup,
	kafkaProducer *kafka.Producer,
	kafkaErrorProducer *kafka.Producer,
	db *graph.DB) healthcheck.HealthCheck {

	hasErrors := false

	versionInfo, err := healthcheck.NewVersionInfo(BuildTime, GitCommit, Version)
	if err != nil {
		hasErrors = true
		log.Event(ctx, "error creating version info", log.ERROR, log.Error(err))
	}
	hc := healthcheck.New(versionInfo, cfg.HealthCheckCriticalTimeout, cfg.HealthCheckInterval)

	if err = hc.AddCheck("Kafka Consumer", kafkaConsumer.Checker); err != nil {
		hasErrors = true
		log.Event(ctx, "error creating kafka consumer", log.ERROR, log.Error(err))
	}

	if err = hc.AddCheck("Kafka Producer", kafkaProducer.Checker); err != nil {
		hasErrors = true
		log.Event(ctx, "error creating kafka producer", log.ERROR, log.Error(err))
	}

	if err = hc.AddCheck("Kafka Error Producer", kafkaErrorProducer.Checker); err != nil {
		hasErrors = true
		log.Event(ctx, "error creating kafka error producer", log.ERROR, log.Error(err))
	}

	if err = hc.AddCheck("GraphDB", db.Checker); err != nil {
		hasErrors = true
		log.Event(ctx, "error creating graph db connection", log.ERROR, log.Error(err))
	}

	if hasErrors {
		os.Exit(1)
	}

	hc.Start(ctx)
	return hc
}

func logIfError(ctx context.Context, err error, message string) {
	if err != nil {
		log.Event(ctx, message, log.ERROR, log.Error(err))
	}
}

func exitIfError(ctx context.Context, err error, message string) {
	if err != nil {
		log.Event(ctx, message, log.FATAL, log.Error(err))
		os.Exit(1)
	}
}
