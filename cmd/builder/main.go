package main

import (
	"context"
	"flag"
	"os"
	"strings"

	"github.com/ONSdigital/dp-graph/graph"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/log.go/log"
)

var codeListID = flag.String("code-list-id", "e44de4c4-d39e-4e2f-942b-3ca10584d078", "")
var instanceID = flag.String("instance-id", "12345", "")
var dimensionNameArg = flag.String("dimension-name", "aggregate", "")
var dimensionName = ""

func main() {
	ctx := context.Background()
	flag.Parse()
	dimensionName = strings.ToLower(*dimensionNameArg)

	db, err := graph.NewHierarchyStore(context.Background())
	exitIfError(ctx, err, "error creating hierarchy store")

	hierarchyStore := &hierarchy.Store{db}
	hierarchyStore.BuildHierarchy(*instanceID, *codeListID, dimensionName)
	exitIfError(ctx, err, "error building hierarchy")
}

func exitIfError(ctx context.Context, err error, message string) {
	if err != nil {
		log.Event(ctx, message, log.FATAL, log.Error(err))
		os.Exit(1)
	}
}
