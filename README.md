dp-hierarchy-builder
================

The hierarchy builder is a service that forms part of the dataset import process. It requires a 'full' hierarchy to be available for the dataset you are importing

### Getting started

Import the CPIH full hierarchy:

`cypher-shell < import-scripts/cypher/cpih1dim1aggid.cypher`

Import the mid-year-pop-est full hierarchy:

`cypher-shell < import-scripts/cypher/mid-year-pop-geography.cypher`

You can use additional flags if running against an environment other than localhost:

`cypher-shell -u USER -p PASSWORD -a bolt://localhost:7687 < .....`

Run the `dp-hierarchy-builder` service:

`make debug`

### Kafka scripts

Scripts for updating and debugging Kafka can be found [here](https://github.com/ONSdigital/dp-data-tools)(dp-data-tools)

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
| HEALTHCHECK_INTERVAL      | time.Minute           | How often to run a health check

Plus the graph database vars from [dp-graph](https://github.com/ONSdigital/dp-graph) - namely `GRAPH_DRIVER_TYPE` and `GRAPH_ADDR`

### Healthcheck

 The `/healthcheck` endpoint returns the current status of the service. Dependent services are health checked on an interval defined by the `HEALTHCHECK_INTERVAL` environment variable.

 On a development machine a request to the health check endpoint can be made by:

 `curl localhost:22700/healthcheck`

### Command line tools

There are a number of utility applications for manual tasks (found under the cmd directory):

* builder - builds an instance hierarchy from a full hierarchy
* v4-transformer - take a V4 file and create a full hierarchy input file / cypher/gremlin scripts for codes following the 1.2.3 format
* geography-transformer - take a geography input CSV file and output a full hierarchy input file / cypher/gremlin scripts
* hierarchy-transformer - take a hierarchy input CSV file, containing codes, labels and parent codes and generate cypher/gremlin scripts

#### Manually building instance hierarchies

* Manually create instance hierarchy for CPIH - note you will have to replace the value for 'instance-id'

`go run cmd/builder/main.go --instance-id 27a4019f-6491-4876-bbdd-1439a40e5bb9 --dimension-name aggregate --code-list-id e44de4c4-d39e-4e2f-942b-3ca10584d078`

* Manually create instance hierarchy for mid-year-pop-est - note you will have to replace the value for 'instance-id'

`go run cmd/builder/main.go --instance-id 34b8c139-a1fe-45b1-95e2-e77df3682256 --dimension-name geography --code-list-id mid-year-pop-geography`

If running one of the above commands against an environment, you can specify the neo4j URL with the flag (replacing USER, PASSSWORD, host, and port as required):

`--neo-url="bolt://USER:PASSWORD@localhost:7687"`

#### Transformers

Transformers allow the conversion of CSV files into the cypher/gremlin scripts needed to load the full (generic) hierarchy into a graph database.
See [TRANSFORMERS](TRANSFORMERS.md) for details.

### Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for details.

### License

Copyright © 2016-2019, Office for National Statistics (https://www.ons.gov.uk)

Released under MIT license, see [LICENSE](LICENSE.md) for details.
