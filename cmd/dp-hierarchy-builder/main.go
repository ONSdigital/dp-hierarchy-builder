package main

import (
	"context"
	"errors"
	"os"
	"os/signal"
	"syscall"

	"github.com/gorilla/mux"

	"github.com/ONSdigital/dp-graph/v2/graph"
	"github.com/ONSdigital/dp-healthcheck/healthcheck"
	"github.com/ONSdigital/dp-hierarchy-builder/config"
	"github.com/ONSdigital/dp-hierarchy-builder/event"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	kafka "github.com/ONSdigital/dp-kafka/v2"
	dphttp "github.com/ONSdigital/dp-net/http"
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

var bufferSize = 1

func main() {
	log.Namespace = "dp-hierarchy-builder"
	ctx := context.Background()

	log.Event(ctx, "starting hierarchy builder", log.INFO)

	cfg, err := config.Get()
	exitIfError(ctx, err, "error getting config")

	// sensitive fields are omitted from cfg.String().
	log.Event(ctx, "loaded config", log.INFO, log.Data{"cfg": cfg})

	kafkaBrokers := cfg.KafkaAddr

	kafkaOffset := kafka.OffsetNewest

	if cfg.KafkaOffsetOldest {
		kafkaOffset = kafka.OffsetOldest
	}

	cgConfig := &kafka.ConsumerGroupConfig{
		Offset:       &kafkaOffset,
		KafkaVersion: &cfg.KafkaVersion,
	}

	cgChannels := kafka.CreateConsumerGroupChannels(bufferSize)
	kafkaConsumer, err := kafka.NewConsumerGroup(
		ctx,
		kafkaBrokers,
		cfg.ConsumerTopic,
		cfg.ConsumerGroup,
		cgChannels,
		cgConfig,
	)
	exitIfError(ctx, err, "error creating kafka consumer")

	pConfig := &kafka.ProducerConfig{
		KafkaVersion: &cfg.KafkaVersion,
	}

	pChannels := kafka.CreateProducerChannels()
	kafkaProducer, err := kafka.NewProducer(ctx, kafkaBrokers, cfg.ProducerTopic, pChannels, pConfig)
	if err != nil {
		log.Event(ctx, "error creating kafka producer", log.FATAL, log.Error(err))
		os.Exit(1)
	}

	errorProducerChannels := kafka.CreateProducerChannels()
	kafkaErrorProducer, err := kafka.NewProducer(ctx, kafkaBrokers, cfg.ErrorProducerTopic, errorProducerChannels, pConfig)
	exitIfError(ctx, err, "error creating kafka producer")

	avroProducer := event.NewAvroProducer(kafkaProducer)

	db, err := graph.NewHierarchyStore(ctx)
	exitIfError(ctx, err, "error creating Kafka error producer")

	graphErrorConsumer := graph.NewLoggingErrorConsumer(ctx, db.ErrorChan())

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

	kafkaConsumer.Channels().LogErrors(ctx, "error received from kafka consumer, topic: "+cfg.ConsumerTopic)
	kafkaProducer.Channels().LogErrors(ctx, "error received from kafka producer, topic: "+cfg.ProducerTopic)
	kafkaErrorProducer.Channels().LogErrors(ctx, "error received from kafka error producer, topic: "+cfg.ErrorProducerTopic)

	// this will block (main) until a fatal error occurs
	select {
	case err := <-apiErrors:
		log.Event(ctx, "http server error", log.ERROR, log.Error(err))
	case <-signals:
		log.Event(ctx, "os signal received", log.INFO)
	}

	ctx, cancel := context.WithTimeout(ctx, cfg.GracefulShutdownTimeout)
	hasShutdownError := false

	go func() {
		defer cancel()

		log.Event(ctx, "stopping health check", log.INFO)
		hc.Stop()

		log.Event(ctx, "closing http server", log.INFO)
		err = httpServer.Shutdown(ctx)
		if err != nil {
			log.Event(ctx, "error closing http server", log.ERROR, log.Error(err))
			hasShutdownError = true
		}

		log.Event(ctx, "closing event consumer", log.INFO)
		err = eventConsumer.Close(ctx)
		if err != nil {
			log.Event(ctx, "error closing event consumer", log.ERROR, log.Error(err))
			hasShutdownError = true
		}

		log.Event(ctx, "closing kafka consumer", log.INFO)
		err = kafkaConsumer.Close(ctx)
		if err != nil {
			log.Event(ctx, "error closing kafka consumer", log.ERROR, log.Error(err))
			hasShutdownError = true
		}

		log.Event(ctx, "closing kafka producer", log.INFO)
		err = kafkaProducer.Close(ctx)
		if err != nil {
			log.Event(ctx, "error closing kafka producer", log.ERROR, log.Error(err))
			hasShutdownError = true
		}

		log.Event(ctx, "closing kafka error producer", log.INFO)
		err = kafkaErrorProducer.Close(ctx)
		if err != nil {
			log.Event(ctx, "error closing kafka error producer", log.ERROR, log.Error(err))
			hasShutdownError = true
		}

		log.Event(ctx, "closing graph db connection", log.INFO)
		err = db.Close(ctx)
		if err != nil {
			log.Event(ctx, "error closing graph db connection", log.ERROR, log.Error(err))
			hasShutdownError = true
		}

		log.Event(ctx, "closing graph db error consumer", log.INFO)
		graphErrorConsumer.Close(ctx)
		if err != nil {
			log.Event(ctx, "error closing graph db error consumer", log.ERROR, log.Error(err))
			hasShutdownError = true
		}
	}()

	// wait for timeout or success (cancel)
	<-ctx.Done()

	// timeout expired
	if ctx.Err() == context.DeadlineExceeded {
		log.Event(ctx, "shutdown timed out", log.ERROR, log.Error(ctx.Err()))
		os.Exit(1)
	}

	if hasShutdownError {
		err = errors.New("failed to shutdown gracefully")
		log.Event(ctx, "failed to shutdown gracefully ", log.ERROR, log.Error(err))
		os.Exit(1)
	}

	log.Event(ctx, "graceful shutdown was successful", log.INFO)
	os.Exit(1)
}

func startAPI(ctx context.Context, hc healthcheck.HealthCheck, cfg *config.Config) (chan error, *dphttp.Server) {
	router := mux.NewRouter()
	router.HandleFunc("/health", hc.Handler)
	apiErrors := make(chan error, 1)

	httpServer := dphttp.NewServer(cfg.BindAddr, router)
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
