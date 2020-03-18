package event_test

import (
	"errors"
	"testing"

	"github.com/ONSdigital/dp-hierarchy-builder/event"
	"github.com/ONSdigital/dp-hierarchy-builder/event/eventtest"
	"github.com/ONSdigital/dp-import/events"
	. "github.com/smartystreets/goconvey/convey"
)

var expectedEvent = &events.DataImportComplete{
	DimensionName: "geography",
	CodeListID:    "543",
	InstanceID:    "123",
}

func TestDataImportCompleteHandler_Handle_HierarchyStoreError(t *testing.T) {

	Convey("Given an event handler with a mock hierarchy store that returns an error", t, func() {

		expectedError := errors.New("neo4j is broken")

		mockHierarchyStore := &eventtest.HierarchyStoreMock{
			BuildHierarchyFunc: func(instanceID string, codeListID string, dimensionName string) error {
				return expectedError
			},
		}

		mockEventProducer := &eventtest.EventProducerMock{}

		eventHandler := event.NewDataImportCompleteHandler(mockHierarchyStore, mockEventProducer)

		Convey("When handle is called", func() {

			err := eventHandler.Handle(ctx, expectedEvent)

			Convey("Then the hierarchy store is called", func() {
				So(len(mockHierarchyStore.BuildHierarchyCalls()), ShouldEqual, 1)
			})

			Convey("Then the error returned from the hierarchy store is returned", func() {
				So(err, ShouldEqual, expectedError)
			})
		})
	})
}

func TestDataImportCompleteHandler_Handle_EventProducerError(t *testing.T) {

	Convey("Given an event handler with a mock event producer that returns an error", t, func() {

		expectedError := errors.New("kafka went pop")

		mockHierarchyStore := &eventtest.HierarchyStoreMock{
			BuildHierarchyFunc: func(instanceID string, codeListID string, dimensionName string) error {
				return nil
			},
		}

		mockEventProducer := &eventtest.EventProducerMock{
			HierarchyBuiltFunc: func(instanceID string, dimensionName string) error {
				return expectedError
			},
		}

		eventHandler := event.NewDataImportCompleteHandler(mockHierarchyStore, mockEventProducer)

		Convey("When handle is called", func() {

			err := eventHandler.Handle(ctx, expectedEvent)

			Convey("Then the hierarchy store is called", func() {
				So(len(mockHierarchyStore.BuildHierarchyCalls()), ShouldEqual, 1)
			})

			Convey("Then the event producer is called", func() {
				So(len(mockHierarchyStore.BuildHierarchyCalls()), ShouldEqual, 1)
			})

			Convey("Then the error returned from the event producer is returned", func() {
				So(err, ShouldEqual, expectedError)
			})
		})
	})
}

func TestDataImportCompleteHandler_Handle(t *testing.T) {

	Convey("Given an event handler", t, func() {

		mockHierarchyStore := &eventtest.HierarchyStoreMock{
			BuildHierarchyFunc: func(instanceID string, codeListID string, dimensionName string) error {
				return nil
			},
		}

		mockEventProducer := &eventtest.EventProducerMock{
			HierarchyBuiltFunc: func(instanceID string, dimensionName string) error {
				return nil
			},
		}

		eventHandler := event.NewDataImportCompleteHandler(mockHierarchyStore, mockEventProducer)

		Convey("When handle is called", func() {

			err := eventHandler.Handle(ctx, expectedEvent)

			Convey("Then the hierarchy store is called", func() {
				So(len(mockHierarchyStore.BuildHierarchyCalls()), ShouldEqual, 1)
			})

			Convey("Then the event producer is called", func() {
				So(len(mockHierarchyStore.BuildHierarchyCalls()), ShouldEqual, 1)
			})

			Convey("Then the error returned is nil", func() {
				So(err, ShouldBeNil)
			})
		})
	})
}
