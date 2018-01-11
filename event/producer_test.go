package event_test

import (
	"testing"

	"github.com/ONSdigital/dp-dataset-exporter/event"
	"github.com/ONSdigital/dp-dataset-exporter/schema"
	"github.com/ONSdigital/go-ns/kafka/kafkatest"
	"github.com/ONSdigital/go-ns/log"
	. "github.com/smartystreets/goconvey/convey"
)

func TestAvroProducer_CSVExported(t *testing.T) {

	Convey("Given an a mock message producer", t, func() {

		// mock schema producer contains the output channel to capture messages sent.
		outputChannel := make(chan []byte, 1)
		mockMessageProducer := kafkatest.NewMessageProducer(outputChannel, nil, nil)

		eventProducer := event.NewAvroProducer(mockMessageProducer)

		Convey("When CSVExported is called on the event producer", func() {

			err := eventProducer.CSVExported(filterOutputId, fileUrl)

			Convey("The expected event is available on the output channel", func() {
				log.Debug("error is:", log.Data{"error": err})
				So(err, ShouldBeNil)

				messageBytes := <-outputChannel
				close(outputChannel)
				observationEvent := unmarshal(messageBytes)
				So(observationEvent.FilterID, ShouldEqual, filterOutputId)
				So(observationEvent.FileURL, ShouldEqual, fileUrl)
			})
		})
	})
}

// Unmarshal converts observation events to []byte.
func unmarshal(bytes []byte) *event.CSVExported {
	event := &event.CSVExported{}
	err := schema.CSVExportedEvent.Unmarshal(bytes, event)
	So(err, ShouldBeNil)
	return event
}
