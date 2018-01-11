package event_test

import (
	"testing"

	"github.com/ONSdigital/dp-hierarchy-builder/event"
	"github.com/ONSdigital/dp-import/events"
	"github.com/ONSdigital/go-ns/kafka/kafkatest"
	. "github.com/smartystreets/goconvey/convey"
)

func TestAvroProducer_HierarchyBuilt(t *testing.T) {

	Convey("Given an a mock message producer", t, func() {

		// mock schema producer contains the output channel to capture messages sent.
		outputChannel := make(chan []byte, 1)
		mockMessageProducer := kafkatest.NewMessageProducer(outputChannel, nil, nil)

		eventProducer := event.NewAvroProducer(mockMessageProducer)

		instanceID := "123"
		dimensionName := "Geography"

		Convey("When HierarchyBuilt is called on the event producer", func() {

			err := eventProducer.HierarchyBuilt(instanceID, dimensionName)

			Convey("The expected event is available on the output channel", func() {

				So(err, ShouldBeNil)

				messageBytes := <-outputChannel
				close(outputChannel)
				event := unmarshal(messageBytes)
				So(event.InstanceID, ShouldEqual, instanceID)
				So(event.DimensionName, ShouldEqual, dimensionName)
			})
		})
	})
}

// Unmarshal converts observation events to []byte.
func unmarshal(bytes []byte) *events.HierarchyBuilt {
	event := &events.HierarchyBuilt{}
	err := events.HierarchyBuiltSchema.Unmarshal(bytes, event)
	So(err, ShouldBeNil)
	return event
}
