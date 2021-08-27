package main

/**

This generator takes a v4 file and infers a hierarchy from the code in the label.

*/

import (
	"context"
	"encoding/csv"
	"flag"
	"os"
	"strings"

	"github.com/ONSdigital/dp-hierarchy-builder/cypher"
	"github.com/ONSdigital/dp-hierarchy-builder/gremlin"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/log.go/v2/log"
)

var filepath = flag.String("file", "cmd/hierarchy-transformer/sic07-heirarchy.csv", "The path to the import filepath")
var cypherFile = flag.String("cypher", "cmd/hierarchy-transformer/output/hierarchy.cypher", "")
var cypherDelFile = flag.String("cypher-delete", "cmd/hierarchy-transformer/output/hierarchy-delete.cypher", "")
var gremlinFile = flag.String("gremlin", "cmd/hierarchy-transformer/output/hierarchy.gremlin", "")
var gremlinDelFile = flag.String("gremlin-delete", "cmd/hierarchy-transformer/output/hierarchy-delete.gremlin", "")

func main() {

	ctx := context.Background()
	flag.Parse()

	// open the input file
	f, err := os.Open(*filepath)
	if err != nil {
		log.Error(ctx, "Failed to open input file", err, log.Data{"file": *filepath})
		os.Exit(1)
	}

	log.Info(ctx, "Opened", log.Data{"file": *filepath})
	csvReader := csv.NewReader(f)
	defer f.Close()

	// discard header row
	_, err = csvReader.Read()
	if err != nil {
		log.Error(ctx, "Failed to read CSV header row", err, log.Data{"file": *filepath})
		os.Exit(1)
	}

	// Create a map of code:node
	nodeMap, err := createNodeMap(csvReader)

	// populate a slice of top level nodes, i.e. the root elements
	rootNodes := hierarchy.IdentifyRootNodes(nodeMap)

	// populate the children of each node using the map to look up parents
	hierarchy.PopulateChildNodes(ctx, nodeMap)

	log.Info(ctx, "Generating cypher script")
	err = cypher.CreateCypherFile(rootNodes, *cypherFile)
	logIfError(ctx, err, "error creating cypher file")

	log.Info(ctx, "Generating cypher deletion script")
	err = cypher.CreateCypherDeleteFile(rootNodes, *cypherDelFile)
	logIfError(ctx, err, "error generating cypher deletion script")

	log.Info(ctx, "Generating gremlin script")
	err = gremlin.CreateGremlinFile(rootNodes, *gremlinFile)
	logIfError(ctx, err, "error creating gremlin script")

	log.Info(ctx, "Generating gremlin deletion script")
	err = gremlin.CreateGremlinDeleteFile(rootNodes, *gremlinDelFile)
	logIfError(ctx, err, "error creating gremlin deletion script")
}

func createNodeMap(csvReader *csv.Reader) (*map[string]*hierarchy.Node, error) {

	// create node map
	var nodeMap = make(map[string]*hierarchy.Node, 0)

	var err error = nil

	// populate a full map of codes to node objects.
	for err == nil {

		record, err := csvReader.Read()
		if err != nil {
			break
		}

		option := &hierarchy.Node{
			CodeList:   strings.Trim(record[0], " "),
			Code:       strings.Trim(record[1], " "),
			Label:      strings.Trim(record[2], " "),
			ParentCode: strings.Trim(record[3], " "),
		}
		nodeMap[option.Code] = option

	}

	return &nodeMap, err
}

func logIfError(ctx context.Context, err error, message string) {
	if err != nil {
		log.Error(ctx, message, err)
	}
}
