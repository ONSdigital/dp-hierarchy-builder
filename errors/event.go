package errors

// Event to contain details of something that happened in the import process.
type Event struct {
	ImportID    string `avro:"import_id"`
	EventType   string `avro:"event_type"`
	EventMsg    string `avro:"event_message"`
	ServiceName string `avro:"service_name"`
}
