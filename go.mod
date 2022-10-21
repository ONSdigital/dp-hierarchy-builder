module github.com/ONSdigital/dp-hierarchy-builder

go 1.17

// To avoid sonatype-2021-4899
exclude github.com/gorilla/sessions v1.2.1

// Fix various security issues
replace github.com/spf13/cobra => github.com/spf13/cobra v1.4.0

// To fix vulnerability CVE-2022-32149 in v0.3.7
replace golang.org/x/text => golang.org/x/text v0.3.8

require (
	github.com/ONSdigital/dp-graph/v2 v2.14.0
	github.com/ONSdigital/dp-healthcheck v1.2.3
	github.com/ONSdigital/dp-import v1.2.1
	github.com/ONSdigital/dp-kafka/v2 v2.4.4
	github.com/ONSdigital/dp-net v1.2.0
	github.com/ONSdigital/dp-reporter-client v1.1.0
	github.com/ONSdigital/log.go/v2 v2.0.9
	github.com/gorilla/mux v1.8.0
	github.com/kelseyhightower/envconfig v1.4.0
	github.com/smartystreets/goconvey v1.7.2
	golang.org/x/net v0.0.0-20220722155237-a158d28d115b
)

require (
	github.com/ONSdigital/dp-api-clients-go v1.43.0 // indirect
	github.com/ONSdigital/go-ns v0.0.0-20210831102424-ebdecc20fe9e // indirect
	github.com/ONSdigital/golang-neo4j-bolt-driver v0.0.0-20210408132126-c2323ff08bf1 // indirect
	github.com/ONSdigital/graphson v0.2.0 // indirect
	github.com/ONSdigital/gremgo-neptune v1.0.2 // indirect
	github.com/Shopify/sarama v1.30.1 // indirect
	github.com/davecgh/go-spew v1.1.1 // indirect
	github.com/eapache/go-resiliency v1.2.0 // indirect
	github.com/eapache/go-xerial-snappy v0.0.0-20180814174437-776d5712da21 // indirect
	github.com/eapache/queue v1.1.0 // indirect
	github.com/fatih/color v1.13.0 // indirect
	github.com/go-avro/avro v0.0.0-20171219232920-444163702c11 // indirect
	github.com/gofrs/uuid v4.0.0+incompatible // indirect
	github.com/golang/snappy v0.0.4 // indirect
	github.com/gopherjs/gopherjs v0.0.0-20210803090616-8f023c250c89 // indirect
	github.com/gorilla/websocket v1.4.2 // indirect
	github.com/hashicorp/go-uuid v1.0.2 // indirect
	github.com/hokaccha/go-prettyjson v0.0.0-20210113012101-fb4e108d2519 // indirect
	github.com/jcmturner/aescts/v2 v2.0.0 // indirect
	github.com/jcmturner/dnsutils/v2 v2.0.0 // indirect
	github.com/jcmturner/gofork v1.0.0 // indirect
	github.com/jcmturner/gokrb5/v8 v8.4.2 // indirect
	github.com/jcmturner/rpc/v2 v2.0.3 // indirect
	github.com/jtolds/gls v4.20.0+incompatible // indirect
	github.com/justinas/alice v1.2.0 // indirect
	github.com/klauspost/compress v1.13.6 // indirect
	github.com/mattn/go-colorable v0.1.9 // indirect
	github.com/mattn/go-isatty v0.0.14 // indirect
	github.com/pierrec/lz4 v2.6.1+incompatible // indirect
	github.com/pkg/errors v0.9.1 // indirect
	github.com/rcrowley/go-metrics v0.0.0-20201227073835-cf1acfcdf475 // indirect
	github.com/smartystreets/assertions v1.2.0 // indirect
	golang.org/x/crypto v0.0.0-20210921155107-089bfa567519 // indirect
	golang.org/x/sys v0.0.0-20220722155257-8c9f86f7a55f // indirect
)
