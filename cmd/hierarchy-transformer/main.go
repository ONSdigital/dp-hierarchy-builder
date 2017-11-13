package main

/**

This generator takes a v4 file and infers a hierarchy from the code in the label.

 */

import (
	"encoding/csv"
	"flag"
	"os"

	"github.com/ONSdigital/go-ns/log"
	"strings"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/dp-hierarchy-builder/cypher"
)

var filepath = flag.String("file", "cmd/hierarchy-transformer/sic07-heirarchy.csv", "The path to the import filepath")
var cypherFile = flag.String("cypher", "cmd/hierarchy-transformer/output/hierarchy.cypher", "")
var cypherDelFile = flag.String("cypher-delete", "cmd/hierarchy-transformer/output/hierarchy-delete.cypher", "")

func main() {

	flag.Parse()

	// open the input file
	f, err := os.Open(*filepath)
	checkErr(err)

	csvReader := csv.NewReader(f)
	defer f.Close()

	// discard header row
	_, err = csvReader.Read()
	checkErr(err)

	// Create a map of code:node
	nodeMap, err := createNodeMap(csvReader)

	// populate a slice of top level nodes, i.e. the root elements
	rootNodes := hierarchy.IdentifyRootNodes(nodeMap)

	// populate the children of each node using the map to look up parents
	hierarchy.PopulateChildNodes(nodeMap)

	log.Debug("Generating cypher script", nil)
	err = cypher.CreateCypherFile(rootNodes, *cypherFile)
	logErr(err)

	log.Debug("Generating cypher deletion script", nil)
	err = cypher.CreateCypherDeleteFile(rootNodes, *cypherDelFile)
	logErr(err)
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

func checkErr(err error) {
	if err != nil {
		log.Error(err, nil)
		os.Exit(1)
	}
}

func logErr(err error) {
	if err != nil {
		log.Error(err, nil)
	}
}
