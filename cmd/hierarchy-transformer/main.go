package main

/**

This generator takes a v4 file and infers a hierarchy from the code in the label.

*/

import (
	"encoding/csv"
	"flag"
	"os"
	"strings"

	"github.com/ONSdigital/dp-hierarchy-builder/cypher"
	"github.com/ONSdigital/dp-hierarchy-builder/gremlin"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/go-ns/log"
)

var filepath = flag.String("file", "cmd/hierarchy-transformer/sic07-heirarchy.csv", "The path to the import filepath")
var cypherFile = flag.String("cypher", "cmd/hierarchy-transformer/output/hierarchy.cypher", "")
var cypherDelFile = flag.String("cypher-delete", "cmd/hierarchy-transformer/output/hierarchy-delete.cypher", "")
var gremlinFile = flag.String("gremlin", "cmd/hierarchy-transformer/output/hierarchy.gremlin", "")
var gremlinDelFile = flag.String("gremlin-delete", "cmd/hierarchy-transformer/output/hierarchy-delete.gremlin", "")

func main() {

	flag.Parse()

	// open the input file
	f, err := os.Open(*filepath)
	if err != nil {
		log.ErrorC("Failed to open input file", err, log.Data{"file": *filepath})
		os.Exit(1)
	}
	log.Info("Opened", log.Data{"file": *filepath})
	csvReader := csv.NewReader(f)
	defer f.Close()

	// discard header row
	_, err = csvReader.Read()
	if err != nil {
		log.ErrorC("Failed to read CSV header row", err, log.Data{"file": *filepath})
		os.Exit(1)
	}

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

	log.Debug("Generating gremlin script", nil)
	err = gremlin.CreateGremlinFile(rootNodes, *gremlinFile)
	logErr(err)

	log.Debug("Generating gremlin deletion script", nil)
	err = gremlin.CreateGremlinDeleteFile(rootNodes, *gremlinDelFile)
	logErr(err)
}

func createNodeMap(csvReader *csv.Reader) (*map[string]*hierarchy.Node, error) {

	// create node map
	var (
		nodeMap   = make(map[string]*hierarchy.Node, 0)
		rootCodes []string
		record    []string
		err       error
	)

	// populate a full map of codes to node objects.
	for {
		if record, err = csvReader.Read(); err != nil {
			break
		}
		option := &hierarchy.Node{
			CodeList:   strings.Trim(record[0], " "),
			Code:       strings.Trim(record[1], " "),
			Label:      strings.Trim(record[2], " "),
			ParentCode: strings.Trim(record[3], " "),
		}
		nodeMap[option.Code] = option
		if option.ParentCode == "" {
			rootCodes = append(rootCodes, option.Code)
		}
	}
	if len(rootCodes) != 1 {
		fakeRoot := &hierarchy.Node{}
		nodeMap[""] = fakeRoot
		for _, multiRoot := range rootCodes {
			nodeMap[multiRoot].ParentCode = fakeRoot.Code
		}
	}
	return &nodeMap, err
}

func logErr(err error) {
	if err != nil {
		log.Error(err, nil)
	}
}
