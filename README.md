# dp-hierarchy-builder

The hierarchy builder is a service that forms part of the dataset import process. It requires a 'full' hierarchy to be available for the dataset you are importing

## Getting started
Run the `dp-hierarchy-builder` service:

`make debug` 

### Hierarchy import scripts

The import scripts rely on the CLI tool for the database you're targeting:
 - `cypher-shell` for Neo4j / Cypher import
 - `gremlin.sh` for Neptune / Gremlin imports

You may also need an SSH tunnel to the database if it's not running locally.

Example import for the CPIH full hierarchy: (replace the filename for other hierarchy import files)

Cypher:
`cypher-shell < import-scripts/cypher/cpih1dim1aggid.cypher`

Gremlin:
`./gremlin-import.sh import-scripts/gremlin/cpih1dim1aggid.grm`

For Cypher imports, you can use additional flags if running against an environment other than localhost:
`cypher-shell -u USER -p PASSWORD -a bolt://localhost:7687 < .....`

### Kafka scripts

Scripts for updating and debugging Kafka can be found [here](https://github.com/ONSdigital/dp-data-tools)(dp-data-tools)

### Configuration

| Environment variable         | Default               | Description
| ---------------------------- | --------------------- | -----------
| BIND_ADDR                    | :22700                | The host and port to bind to
| KAFKA_ADDR                   | localhost:9092        | A list of Kafka host addresses
| KAFKA_VERSION                | `1.0.2`               | The kafka version that this service expects to connect to
| KAFKA_OFFSET_OLDEST          | true                  | sets kafka offset to oldest if `true`
| KAFKA_SEC_PROTO              | _unset_               | if set to `TLS`, kafka connections will use TLS [1]
| KAFKA_SEC_CLIENT_KEY         | _unset_               | PEM for the client key [1]
| KAFKA_SEC_CLIENT_CERT        | _unset_               | PEM for the client certificate [1]
| KAFKA_SEC_CA_CERTS           | _unset_               | CA cert chain for the server cert [1]
| KAFKA_SEC_SKIP_VERIFY        | false                 | ignores server certificate issues if `true` [1]
| CONSUMER_GROUP               | dp-hierarchy-builder  | The name of the Kafka consumer group
| CONSUMER_TOPIC               | observations-imported | The name of the topic to consumes messages from
| PRODUCER_TOPIC               | hierarchy-built       | The name of the topic to produces messages to
| ERROR_PRODUCER_TOPIC         | import-error          | The name of the topic to send error messages to
| GRACEFUL_SHUTDOWN_TIMEOUT    | time.Second * 10      | Time time to wait when gracefully shutting down before closing
| HEALTHCHECK_INTERVAL         | 30s                   | The time between doing health checks
| HEALTHCHECK_CRITICAL_TIMEOUT | 90s                   | The time taken for the health changes from warning state to critical due to subsystem check failures

Plus the graph database vars from [dp-graph](https://github.com/ONSdigital/dp-graph) - namely `GRAPH_DRIVER_TYPE` and `GRAPH_ADDR`

**Notes:**

1. For more info, see the [kafka TLS examples documentation](https://github.com/ONSdigital/dp-kafka/tree/main/examples#tls)

### Healthcheck

 The `/healthcheck` endpoint returns the current status of the service. Dependent services are health checked on an interval defined by the `HEALTHCHECK_INTERVAL` environment variable.

 On a development machine a request to the health check endpoint can be made by:

 `curl localhost:22700/healthcheck`

### Command line tools

There are a number of utility applications for manual tasks (found under the cmd directory):

* v4-transformer - take a V4 file and create a full hierarchy input file / cypher script
* geography-transformer - take a geography input CSV file and output a full hierarchy input file / cypher script
* hierarchy-transformer - take a hierarchy input CSV file and generate cypher script
* builder - builds an instance hierarchy from a full hierarchy
* producer - produces a Kafka message for the dp-hierarchy-builder process to consume

#### Manually building instance hierarchies

* Manually create instance hierarchy for CPIH - note you will have to replace the value for 'instance-id'

`go run cmd/builder/main.go --instance-id 27a4019f-6491-4876-bbdd-1439a40e5bb9 --dimension-name aggregate --code-list-id e44de4c4-d39e-4e2f-942b-3ca10584d078`

* Manually create instance hierarchy for mid-year-pop-est - note you will have to replace the value for 'instance-id'

`go run cmd/builder/main.go --instance-id 34b8c139-a1fe-45b1-95e2-e77df3682256 --dimension-name geography --code-list-id mid-year-pop-geography`

If running one of the above commands against an environment, you can specify the neo4j URL with the flag (replacing USER, PASSSWORD, host, and port as required):

`--neo-url="bolt://USER:PASSWORD@localhost:7687"`

#### transform a hierarchy input file to a cypher script (set FILE as required input file)

`make FILE=./cmd/hierarchy-transformer/hierarchy.csv generate-full`

output is written to `./cmd/hierarchy-transformer/output`

#### transform a geography input file to a hierarchy input file / cypher script

`make FILE=./cmd/geography-transformer/WD16_LAD16_CTY16_OTH_UK_LU.csv  generate-full-from-geography `

output is written to ``./cmd/geography-transformer/output`

#### transform a `code,label,parent` format csv to a hierarchy input file

```
codelistid=cpih1dim1aggid
go run cmd/code-label-parent-transformer/main.go --file import-scripts/code-label-parent-csv/$codelistid.csv --code-list-id $codelistid --output import-scripts/$codelistid.csv`
```

#### produce a Kafka message for the dp-hierarchy-builder process to consume

```
go run cmd/producer/main.go --instance-id '58004716-a2d4-4dd1-a6c3-6accab30ad2a' --code-list-id 'cpih1dim1aggid' --dimension-name 'aggregate'
```

### Contributing

See [CONTRIBUTING](CONTRIBUTING.md) for details.

### License

Copyright © 2016-2021, Office for National Statistics (https://www.ons.gov.uk)

Released under MIT license, see [LICENSE](LICENSE.md) for details.
