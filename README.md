dp-hierarchy-builder
================

### Getting started

There are a number of utility applications as part of this project (found under the cmd directory):

* v4-transformer - take a V4 file and create a full hierarchy input file / cypher script
* geography-transformer - take a geography input CSV file and output a full hierarchy input file / cypher script
* hierarchy-transformer - take a hierarchy input CSV file and generate cypher script
* builder - builds an instance hierarchy from a full hierarchy

#### Manually building full and instance hierarchies

* Import the full coicop hierarchy for the CPI dataset

`make full`

* Create an instance hierarchy for the coicop hierarchy - please note you will have to replace the value for 'INSTANCE_ID'

`make INSTANCE_ID="c4-d39e-4e2f-942b-3ca105" instance-builder`

#### transform a hierarchy input file to a cypher script (set FILE as required input file)

`make FILE=./cmd/hierarchy-transformer/hierarchy.csv generate-full`

output is written to ``./cmd/hierarchy-transformer/output`

#### transform a geography input file to a hierarchy input file / cypher script

`make FILE=./cmd/geography-transformer/WD16_LAD16_CTY16_OTH_UK_LU.csv  generate-full-from-geography `

output is written to ``./cmd/geography-transformer/output`

#### Query the instance hierarchy

* get children of a node - note that the "code" field will have to be set in the query

```
MATCH (n:`_hierarchy_node_c4-d39e-4e2f-942b-3ca105_aggregate` {code:"cpi1dim1T120000"})<-[r:hasParent]-(child) RETURN child`
```

* Query the ancestors (aka breadcrumb) of a node

```
MATCH (n:`_hierarchy_node_c4-d39e-4e2f-942b-3ca105_aggregate` {code:"cpi1dim1G120500"})-[:hasParent *]->(ancestor) RETURN ancestor
```


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
