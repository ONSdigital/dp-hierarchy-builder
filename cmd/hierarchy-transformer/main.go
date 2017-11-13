package main

/**

This generator takes a v4 file and infers a hierarchy from the code in the label.

 */

import (
	"encoding/csv"
	"flag"
	"fmt"
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

	f, err := os.Open(*filepath)
	checkErr(err)

	csvr := csv.NewReader(f)
	defer f.Close()

	// create node map
	var nodeMap = make(map[string]*hierarchy.Node, 0)
	var topLevelNodes []*hierarchy.Node

	// discard header
	_, err = csvr.Read()
	checkErr(err)

	// populate a full map of codes to node objects.
	for err == nil {

		record, err := csvr.Read()
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

		log.Debug(fmt.Sprintf("%+v", option), nil)

		if option.ParentCode == "" {
			topLevelNodes = append(topLevelNodes, option)
		}
	}

	// populate the children of each node using the map to look up parents
	for _, entry := range nodeMap {

		if nodeMap[entry.ParentCode] == nil {
			fmt.Println("Entry not found for label code " + entry.ParentCode)
			continue
		}

		nodeMap[entry.ParentCode].Children = append(nodeMap[entry.ParentCode].Children, entry)
	}

	log.Debug("Generating cypher script", nil)
	err = cypher.CreateCypherFile(topLevelNodes, *cypherFile)
	logErr(err)

	log.Debug("Generating cypher deletion script", nil)
	err = cypher.CreateCypherDeleteFile(topLevelNodes, *cypherDelFile)
	logErr(err)
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
