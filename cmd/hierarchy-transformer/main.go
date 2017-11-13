package main

/**

This generator takes a v4 file and infers a hierarchy from the code in the label.

 */

import (
	"bytes"
	"encoding/csv"
	"flag"
	"fmt"
	"io/ioutil"
	"os"

	"github.com/ONSdigital/go-ns/log"
	"strings"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
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

	createCypherScript(topLevelNodes)
}

func createCypherScript(topLevelNodes []*hierarchy.Node) {

	var buffer = &bytes.Buffer{}

	buffer.WriteString("CREATE ")

	traverseNodesWriteCypher(topLevelNodes, buffer, nil)

	buffer.WriteString(";")

	err := ioutil.WriteFile(*cypherFile, buffer.Bytes(), 0644)
	checkErr(err)

	neoDeleteBuffer := &bytes.Buffer{}
	neoDeleteBuffer.WriteString(fmt.Sprintf("// Deleting nodes from full hierarchy\nMATCH (n:%s_generic_hierarchy_node_%s%s)\nDETACH DELETE n;\n", "`", topLevelNodes[0].CodeList, "`"))
	err = ioutil.WriteFile(*cypherDelFile, neoDeleteBuffer.Bytes(), 0644)
	checkErr(err)
}

func traverseNodesWriteCypher(nodes []*hierarchy.Node, buffer *bytes.Buffer, parent *hierarchy.Node) {
	for i, node := range nodes {

		// write the new line unless we are right at the beginning of the file.
		if parent != nil || i != 0 {
			buffer.WriteString(",\n")
		}

		buffer.WriteString(
			fmt.Sprintf("(`%s`:`_generic_hierarchy_node_%s` { code:'%s',label:'%s' })", node.Code, node.CodeList, node.Code, node.Label))


		if parent != nil {
			buffer.WriteString(
				fmt.Sprintf(",\n(`%s`)-[:hasParent]->(`%s`)", node.Code, parent.Code))
		}

		if node.Children != nil {
			traverseNodesWriteCypher(node.Children, buffer, node)
		}
	}
}

func checkErr(err error) {
	if err != nil {
		log.Error(err, nil)
		os.Exit(1)
	}
}
