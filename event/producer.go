package event

import (
	"github.com/ONSdigital/dp-import/events"
	"github.com/ONSdigital/go-ns/log"
)

// AvroProducer produces Avro serialised messages.
type AvroProducer struct {
	messageProducer MessageProducer
}

// MessageProducer dependency that writes messages.
type MessageProducer interface {
	Output() chan []byte
}

// NewAvroProducer returns a new instance of AvroProducer.
func NewAvroProducer(messageProducer MessageProducer) *AvroProducer {
	return &AvroProducer{
		messageProducer: messageProducer,
	}
}

// CSVExported produces a new CSV exported event for the given filter output ID.
func (producer *AvroProducer) HierarchyBuilt(instanceID, dimensionName string) error {

	hierarchyBuiltEvent := &events.HierarchyBuilt{
		DimensionName: dimensionName,
		InstanceID:    instanceID,
	}

	log.Debug("producing hierarchy built event kafka message",
		log.Data{"event": hierarchyBuiltEvent})

	bytes, err := events.HierarchyBuiltSchema.Marshal(hierarchyBuiltEvent)
	if err != nil {
		return err
	}

	producer.messageProducer.Output() <- bytes

	return nil
}
