package errors

import "github.com/ONSdigital/go-ns/avro"

var event = `{
  "type": "record",
  "name": "report-event",
  "fields": [
    {"name": "filter_id", "type": "string"},
    {"name": "event_type", "type": "string"},
    {"name": "event_message", "type": "string"},
    {"name": "service_name", "type": "string"}
  ]
}`

// EventSchema provides the avro schema object for an error event.
var EventSchema = &avro.Schema{
	Definition: event,
}
