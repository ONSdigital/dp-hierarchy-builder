package event

import (
	"context"
	"github.com/ONSdigital/dp-import/events"
	"github.com/ONSdigital/log.go/v2/log"
)

//go:generate moq -out ./eventtest/hierarchy_store.go -pkg eventtest . HierarchyStore
//go:generate moq -out ./eventtest/event_producer.go -pkg eventtest . EventProducer

// DataImportCompleteHandler ...
type DataImportCompleteHandler struct {
	hierarchyStore HierarchyStore
	eventProducer  EventProducer
}

// HierarchyStore provides storage functionality for hierarchy data
type HierarchyStore interface {
	BuildHierarchy(instanceID, codeListID, dimensionName string) error
}

// EventProducer handles producing output events.
type EventProducer interface {
	HierarchyBuilt(ctx context.Context, instanceID, dimensionName string) error
}

// NewDataImportCompleteHandler ...
func NewDataImportCompleteHandler(hierarchyStore HierarchyStore, eventProducer EventProducer) *DataImportCompleteHandler {
	return &DataImportCompleteHandler{
		hierarchyStore: hierarchyStore,
		eventProducer:  eventProducer,
	}
}

// Handle takes a single event, and returns the observations gathered from the URL in the event.
func (handler DataImportCompleteHandler) Handle(ctx context.Context, event *events.DataImportComplete) error {

	logData := log.Data{"event": event}
	log.Info(ctx, "event handler called", logData)

	err := handler.hierarchyStore.BuildHierarchy(
		event.InstanceID,
		event.CodeListID,
		event.DimensionName,
	)
	if err != nil {
		return err
	}

	err = handler.eventProducer.HierarchyBuilt(ctx, event.InstanceID, event.DimensionName)
	if err != nil {
		return err
	}

	log.Info(ctx, "event successfully handled", logData)

	return nil
}
