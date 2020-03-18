package main

/**

This generator takes a v4 file and infers a hierarchy from the code in the label.

*/

import (
	"context"
	"encoding/csv"
	"flag"
	"os"

	"github.com/ONSdigital/dp-hierarchy-builder/cypher"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/log.go/log"
	"strings"
)

var filepath = flag.String("file", "cmd/hierarchy-transformer/sic07-heirarchy.csv", "The path to the import filepath")
var cypherFile = flag.String("cypher", "cmd/hierarchy-transformer/output/hierarchy.cypher", "")
var cypherDelFile = flag.String("cypher-delete", "cmd/hierarchy-transformer/output/hierarchy-delete.cypher", "")

func main() {

	ctx := context.Background()
	flag.Parse()

	// open the input file
	f, err := os.Open(*filepath)
	if err != nil {
		log.Event(ctx, "Failed to open input file", log.ERROR, log.Error(err), log.Data{"file": *filepath})
		os.Exit(1)
	}

	csvReader := csv.NewReader(f)
	defer f.Close()

	// discard header row
	_, err = csvReader.Read()
	if err != nil {
		log.Event(ctx, "Failed to read CSV header row", log.ERROR, log.Error(err), log.Data{"file": *filepath})
		os.Exit(1)
	}

	// Create a map of code:node
	nodeMap, err := createNodeMap(csvReader)

	// populate a slice of top level nodes, i.e. the root elements
	rootNodes := hierarchy.IdentifyRootNodes(nodeMap)

	// populate the children of each node using the map to look up parents
	hierarchy.PopulateChildNodes(ctx, nodeMap)

	log.Event(ctx, "Generating cypher script")
	err = cypher.CreateCypherFile(rootNodes, *cypherFile)
	logIfError(ctx, err, "error creating cypher file")

	log.Event(ctx, "Generating cypher deletion script")
	err = cypher.CreateCypherDeleteFile(rootNodes, *cypherDelFile)
	logIfError(ctx, err, "error generating deletion script")
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

		trimmedLabel := strings.Trim(record[2], " ")
		escapedLabel := strings.Replace(trimmedLabel, "'", "\\'", -1)

		option := &hierarchy.Node{
			CodeList:   strings.Trim(record[0], " "),
			Code:       strings.Trim(record[1], " "),
			Label:      escapedLabel,
			ParentCode: strings.Trim(record[3], " "),
		}

		nodeMap[option.Code] = option

	}

	return &nodeMap, err
}

func logIfError(ctx context.Context, err error, message string) {
	if err != nil {
		log.Event(ctx, message, log.ERROR, log.Error(err))
	}
}
