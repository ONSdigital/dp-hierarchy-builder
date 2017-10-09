package errors

import (
	"github.com/ONSdigital/go-ns/log"
)

//go:generate moq -out errorstest/handler.go -pkg errorstest . Handler
//go:generate moq -out errorstest/message_producer.go -pkg errorstest . MessageProducer

var _ Handler = (*KafkaHandler)(nil)

// Handler is a generic interface for handling errors
type Handler interface {
	Handle(importID string, err error)
}

// KafkaHandler provides an error handler that writes to the kafka error topic
type KafkaHandler struct {
	messageProducer MessageProducer
}

//NewKafkaHandler returns a new KafkaHandler that sends error messages
func NewKafkaHandler(messageProducer MessageProducer) *KafkaHandler {
	return &KafkaHandler{
		messageProducer: messageProducer,
	}
}

//MessageProducer deoedency that writes messages to channels
type MessageProducer interface {
	Output() chan []byte
}

// Handle logs the error to the error handler via a kafka message
func (handler *KafkaHandler) Handle(importID string, err error) {

	data := log.Data{"import_id": importID, "error": err.Error()}
	log.Info("An error occured while processing a import job", data)

	error := Event{
		ImportID:    importID,
		EventType:   "error",
		EventMsg:    err.Error(),
		ServiceName: "dp-dataset-exporter",
	}

	errMsg, err := EventSchema.Marshal(error)
	if err != nil {
		log.ErrorC("Failed to marshall error event", err, data)
		return
	}
	handler.messageProducer.Output() <- errMsg
}
