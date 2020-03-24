package event

import (
	"context"
	"errors"
	"github.com/ONSdigital/dp-import/events"
	kafka "github.com/ONSdigital/dp-kafka"
	"github.com/ONSdigital/dp-reporter-client/reporter"
	"github.com/ONSdigital/log.go/log"
)

//go:generate moq -out eventtest/handler.go -pkg eventtest . Handler

// MessageConsumer provides a generic interface for consuming []byte messages
type MessageConsumer interface {
	Channels() *kafka.ConsumerGroupChannels
}

// Handler represents a handler for processing a single event.
type Handler interface {
	Handle(ctx context.Context, dataImportComplete *events.DataImportComplete) error
}

// Consumer consumes event messages.
type Consumer struct {
	closing chan bool
	closed  chan bool
}

// NewConsumer returns a new consumer instance.
func NewConsumer() *Consumer {
	return &Consumer{
		closing: make(chan bool),
		closed:  make(chan bool),
	}
}

// Consume converts messages to event instances, and pass the event to the provided handler.
func (consumer *Consumer) Consume(ctx context.Context, messageConsumer MessageConsumer, handler Handler, errorReporter reporter.ErrorReporter) {

	go func() {
		defer close(consumer.closed)

		for {
			select {
			case message := <-messageConsumer.Channels().Upstream:
				messageCtx := context.Background()
				processMessage(messageCtx, message, handler, errorReporter)
			case <-consumer.closing:
				log.Event(ctx, "closing event consumer loop", log.INFO)
				return
			}
		}
	}()

}

// Close safely closes the consumer and releases all resources
func (consumer *Consumer) Close(ctx context.Context) (err error) {

	if ctx == nil {
		ctx = context.Background()
	}

	close(consumer.closing)

	select {
	case <-consumer.closed:
		log.Event(ctx, "successfully closed event consumer", log.INFO)
		return nil
	case <-ctx.Done():
		log.Event(ctx, "shutdown context time exceeded, skipping graceful shutdown of event consumer", log.INFO)
		return errors.New("shutdown context timed out")
	}

}

func processMessage(ctx context.Context, message kafka.Message, handler Handler, errorReporter reporter.ErrorReporter) {

	event, err := unmarshal(message)
	if err != nil {
		log.Event(ctx, "failed to unmarshal event", log.ERROR, log.Error(err))
		return
	}

	log.Event(ctx, "event received", log.INFO, log.Data{"event": event})

	err = handler.Handle(ctx, event)
	if err != nil {
		errorReporter.Notify(event.InstanceID, "failed to handle event", err)
		log.Event(ctx, "failed to handle event", log.ERROR, log.Error(err))
	}

	log.Event(ctx, "event processed - committing message", log.INFO, log.Data{"event": event})
	message.Commit()
	log.Event(ctx, "message committed", log.INFO, log.Data{"event": event})
}

// unmarshal converts a event instance to []byte.
func unmarshal(message kafka.Message) (*events.DataImportComplete, error) {
	var event events.DataImportComplete
	err := events.DataImportCompleteSchema.Unmarshal(message.GetData(), &event)
	return &event, err
}
