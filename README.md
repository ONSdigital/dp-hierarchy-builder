dp-hierarchy-builder
================

### Getting started

### Configuration

| Environment variable      | Default               | Description
| ------------------------- | --------------------- | -----------
| BIND_ADDR                 | :22700                | The host and port to bind to
| KAFKA_ADDR                | localhost:9092        | A list of Kafka host addresses
| CONSUMER_GROUP            | dp-hierarchy-builder  | The name of the Kafka consumer group
| CONSUMER_TOPIC            | observations-imported | The name of the topic to consumes messages from
| PRODUCER_TOPIC            | hierarchy-built       | The name of the topic to produces messages to
| ERROR_PRODUCER_TOPIC      | import-error          | The name of the topic to send error messages to
| GRACEFUL_SHUTDOWN_TIMEOUT | time.Second * 10      | Time time to wait when gracefully shutting down before closing

### Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for details.

### License

Copyright © 2016-2017, Office for National Statistics (https://www.ons.gov.uk)

Released under MIT license, see [LICENSE](LICENSE.md) for details.
