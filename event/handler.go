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

	// can we just look at the existing dimensions option nodes and generate the hierarchy from that?

	log.Debug("Event handler called", log.Data{"event": event})
	return nil
}