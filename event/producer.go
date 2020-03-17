package event

import (
	"context"
	"github.com/ONSdigital/dp-import/events"
	kafka "github.com/ONSdigital/dp-kafka"
	"github.com/ONSdigital/go-ns/log"
)

// AvroProducer produces Avro serialised messages.
type AvroProducer struct {
	kafkaProducer KafkaProducer
}

type KafkaProducer interface {
	Channels() *kafka.ProducerChannels
	Close(ctx context.Context) (err error)
}

// NewAvroProducer returns a new instance of AvroProducer.
func NewAvroProducer(kafkaProducer KafkaProducer) *AvroProducer {
	return &AvroProducer{
		kafkaProducer: kafkaProducer,
	}
}

// CSVExported produces a new CSV exported event for the given filter output ID.
func (producer *AvroProducer) HierarchyBuilt(instanceID, dimensionName string) error {

	hierarchyBuiltEvent := &events.HierarchyBuilt{
		DimensionName: dimensionName,
		InstanceID:    instanceID,
	}

	log.Debug("producing hierarchy built event kafka message",
		log.Data{"event": hierarchyBuiltEvent},
	)

	bytes, err := events.HierarchyBuiltSchema.Marshal(hierarchyBuiltEvent)
	if err != nil {
		return err
	}

	producer.kafkaProducer.Channels().Output <- bytes

	return nil
}
