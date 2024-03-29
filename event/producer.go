package event

import (
	"github.com/ONSdigital/dp-import/events"
	kafka "github.com/ONSdigital/dp-kafka/v2"
	"github.com/ONSdigital/log.go/v2/log"
	"golang.org/x/net/context"
)

// AvroProducer produces Avro serialised messages.
type AvroProducer struct {
	kafkaProducer KafkaProducer
}

// KafkaProducer represents the interface of a Kafka Producer
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

// HierarchyBuilt produces a new CSV exported event for the given filter output ID.
func (producer *AvroProducer) HierarchyBuilt(ctx context.Context, instanceID, dimensionName string) error {

	hierarchyBuiltEvent := &events.HierarchyBuilt{
		DimensionName: dimensionName,
		InstanceID:    instanceID,
	}

	log.Info(ctx, "producing hierarchy built event kafka message", log.Data{"event": hierarchyBuiltEvent})

	bytes, err := events.HierarchyBuiltSchema.Marshal(hierarchyBuiltEvent)
	if err != nil {
		return err
	}

	producer.kafkaProducer.Channels().Output <- bytes

	return nil
}
