package main

import (
	"context"
	"flag"
	"os"
	"time"

	"github.com/ONSdigital/dp-hierarchy-builder/config"
	"github.com/ONSdigital/dp-import/events"

	kafka "github.com/ONSdigital/dp-kafka/v2"
	"github.com/ONSdigital/log.go/v2/log"
)

var instanceID = flag.String("instance-id", "58004716-a2d4-4dd1-a6c3-6accab30ad2a", "")
var codeListID = flag.String("code-list-id", "cpih1dim1aggid", "")
var dimensionName = flag.String("dimension-name", "aggregate", "")

func main() {
	ctx := context.Background()
	flag.Parse()

	log.Info(ctx, "starting producer for DataImportComplete event", log.Data{
		"instance_id":    instanceID,
		"code_list_id":   codeListID,
		"dimension_name": dimensionName,
	})

	var cfg *config.Config
	cfg, err := config.Get()
	if err != nil {
		log.Fatal(ctx, "failed to retrieve configuration", err)
		os.Exit(1)
	}
	log.Info(ctx, "loaded config", log.Data{"cfg": cfg})

	pChannels := kafka.CreateProducerChannels()
	pChannels.LogErrors(ctx, "Producer error")
	pConfig := &kafka.ProducerConfig{
		KafkaVersion: &cfg.KafkaVersion,
	}

	producer, err := kafka.NewProducer(ctx, cfg.KafkaAddr, cfg.ConsumerTopic, pChannels, pConfig)
	if err != nil {
		log.Fatal(ctx, "failed to create kafka producer", err)
		os.Exit(1)
	}

	select {
	case <-pChannels.Ready: // wait for the producer to be ready before attempting to send the message
	case <-time.After(5 * time.Second):
		log.Fatal(ctx, "kafka producer initialisation timeout", nil)
		os.Exit(1)
	}

	event := events.DataImportComplete{
		InstanceID:    *instanceID,
		DimensionName: *dimensionName,
		CodeListID:    *codeListID,
	}

	log.Info(ctx, "producing DataImportComplete event")
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
