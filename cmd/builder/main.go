package main

import (
	"flag"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/go-ns/log"
	bolt "github.com/ONSdigital/golang-neo4j-bolt-driver"
	"os"
	"strings"
)

var neoURL = flag.String("neo-url", "bolt://localhost:7687", "")
var codeListID = flag.String("code-list-id", "e44de4c4-d39e-4e2f-942b-3ca10584d078", "")
var instanceID = flag.String("instance-id", "12345", "")
var dimensionNameArg = flag.String("dimension-name", "aggregate", "")
var dimensionName = ""

func main() {
	flag.Parse()
	dimensionName = strings.ToLower(*dimensionNameArg)

	neo4jConnPool, err := bolt.NewClosableDriverPool(*neoURL, 1)
	exitIfError(err)
	defer neo4jConnPool.Close()

	connection, err := neo4jConnPool.OpenPool()
	exitIfError(err)
	defer connection.Close()

	hierarchyStore := hierarchy.NewStore(neo4jConnPool)

	hierarchyStore.BuildHierarchy(*instanceID, *codeListID, dimensionName)
	exitIfError(err)
}

func exitIfError(err error) {
	if err != nil {
		log.Error(err, nil)
		os.Exit(1)
	}
}
