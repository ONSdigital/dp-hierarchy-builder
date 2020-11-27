package event_test

import (
	"testing"

	"github.com/ONSdigital/dp-hierarchy-builder/event"
	kafka "github.com/ONSdigital/dp-kafka/v2"
	"github.com/ONSdigital/dp-kafka/v2/kafkatest"

	"github.com/ONSdigital/dp-import/events"
	. "github.com/smartystreets/goconvey/convey"
)

func TestAvroProducer_HierarchyBuilt(t *testing.T) {

	Convey("Given an a mock message producer", t, func() {

		mockMessageProducer := kafkatest.NewMessageProducerWithChannels(&kafka.ProducerChannels{
			Output: make(chan []byte, 1),
		}, true)

		eventProducer := event.NewAvroProducer(mockMessageProducer)

		instanceID := "123"
		dimensionName := "Geography"

		Convey("When HierarchyBuilt is called on the event producer", func() {

			err := eventProducer.HierarchyBuilt(testCtx, instanceID, dimensionName)

			Convey("The expected event is available on the output channel", func() {

				So(err, ShouldBeNil)

				messageBytes := <-mockMessageProducer.Channels().Output
				close(mockMessageProducer.Channels().Output)
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
