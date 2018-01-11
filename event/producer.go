package event

import "github.com/ONSdigital/dp-import/events"

// AvroProducer of output events.
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
func (producer *AvroProducer) HierarchyBuilt(filterID, fileURL string) error {

	

	return nil
}
