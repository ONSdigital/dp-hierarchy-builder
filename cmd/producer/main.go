package main

import (
	"context"
	"flag"
	"github.com/ONSdigital/dp-hierarchy-builder/config"
	"github.com/ONSdigital/dp-import/events"
	"os"
	"time"

	kafka "github.com/ONSdigital/dp-kafka/v2"
	"github.com/ONSdigital/log.go/log"
)

var instanceID = flag.String("instance-id", "58004716-a2d4-4dd1-a6c3-6accab30ad2a", "")
var codeListID = flag.String("code-list-id", "cpih1dim1aggid", "")
var dimensionName = flag.String("dimension-name", "aggregate", "")

func main() {
	ctx := context.Background()
	flag.Parse()

	log.Event(ctx, "starting producer for DataImportComplete event", log.INFO, log.Data{
		"instance_id":    instanceID,
		"code_list_id":   codeListID,
		"dimension_name": dimensionName,
	})

	var cfg *config.Config
	cfg, err := config.Get()
	if err != nil {
		log.Event(ctx, "failed to retrieve configuration", log.FATAL, log.Error(err))
		os.Exit(1)
	}
	log.Event(ctx, "loaded config", log.INFO, log.Data{"cfg": cfg})

	pChannels := kafka.CreateProducerChannels()
	pChannels.LogErrors(ctx, "Producer error")
	pConfig := &kafka.ProducerConfig{
		KafkaVersion: &cfg.KafkaVersion,
	}

	producer, err := kafka.NewProducer(ctx, cfg.KafkaAddr, cfg.ConsumerTopic, pChannels, pConfig)
	if err != nil {
		log.Event(ctx, "failed to create kafka producer", log.FATAL, log.Error(err))
		os.Exit(1)
	}

	select {
	case <-pChannels.Ready: // wait for the producer to be ready before attempting to send the message
	case <-time.After(5 * time.Second):
		log.Event(ctx, "kafka producer initialisation timeout", log.FATAL)
		os.Exit(1)
	}

	event := events.DataImportComplete{
		InstanceID:    *instanceID,
		DimensionName: *dimensionName,
		CodeListID:    *codeListID,
	}

	log.Event(ctx, "producing DataImportComplete event", log.INFO)
	sendEvent(producer, event)

	time.Sleep(5000 * time.Millisecond)

	producer.Close(nil)
}

func sendEvent(producer *kafka.Producer, event events.DataImportComplete) {
	bytes, error := events.DataImportCompleteSchema.Marshal(event)
	if error != nil {
		panic(error)
	}
	producer.Channels().Output <- bytes
}
