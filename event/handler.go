package event

import (
	"github.com/ONSdigital/go-ns/log"
)

// ObservationsImportedHandler ...
type ObservationsImportedHandler struct {
}

// NewObservationsImportedHandler ...
func NewObservationsImportedHandler() *ObservationsImportedHandler {
	return &ObservationsImportedHandler{}
}

// Handle takes a single event, and returns the observations gathered from the URL in the event.
func (handler ObservationsImportedHandler) Handle(event *ObservationsImported) error {

	// determine which hierarchies need building for this instance
	//    take the instance ID and query the recipe to get hierarchies?

	// for now just hardcode to have the coicop hierarchy
	//hierarchyID := ""

	// copy the generic hierarchy nodes to an instance specific copy

	// populate the instance hierarchy details

	log.Debug("Event handler called", log.Data{"event": event})
	return nil
}
