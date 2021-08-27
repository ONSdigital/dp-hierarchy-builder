package main

import (
	"context"
	"flag"
	"os"
	"strings"

	"github.com/ONSdigital/dp-graph/v2/graph"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/log.go/v2/log"
)

var codeListID = flag.String("code-list-id", "cpih1dim1aggid", "")
var instanceID = flag.String("instance-id", "58004716-a2d4-4dd1-a6c3-6accab30ad2a", "")
var dimensionNameArg = flag.String("dimension-name", "aggregate", "")
var dimensionName = ""

func main() {
	ctx := context.Background()
	flag.Parse()
	dimensionName = strings.ToLower(*dimensionNameArg)

	db, err := graph.NewHierarchyStore(context.Background())
	exitIfError(ctx, err, "error creating hierarchy store")

	hierarchyStore := &hierarchy.Store{db}
	err = hierarchyStore.BuildHierarchy(*instanceID, *codeListID, dimensionName)
	exitIfError(ctx, err, "error building hierarchy")
}

func exitIfError(ctx context.Context, err error, message string) {
	if err != nil {
		log.Fatal(ctx, message, err)
		os.Exit(1)
	}
}
