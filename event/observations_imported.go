package event

import "github.com/ONSdigital/go-ns/avro"

// ObservationsImported is the event consumed.
type ObservationsImported struct {
	InstanceID string `avro:"instance_id"`
}

// ObservationsImportedSchema is the Avro schema for the ObservationsImportedEvent.
var ObservationsImportedSchema *avro.Schema = &avro.Schema{
	Definition: observationsImportedSchema,
}

var observationsImportedSchema = `{
  "type": "record",
  "name": "observations-imported",
  "fields": [
    {"name": "instance_id", "type": "string"}
  ]
}`
