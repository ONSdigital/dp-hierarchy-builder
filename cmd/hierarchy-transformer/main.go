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
)

var filepath = flag.String("f", "cmd/hierarchy-transformer/hierarchy.csv", "The path to the import filepath")
var cypherFile = flag.String("cypher", "cmd/hierarchy-transformer/output/hierarchy.cypher", "")
var cypherDelFile = flag.String("cypher-delete", "cmd/hierarchy-transformer/output/hierarchy-delete.cypher", "")

type HierarchicalDimensionOption struct {
	Code       string
	CodeList   string
	Label      string
	ParentCode string
	Children   []*HierarchicalDimensionOption
}

func main() {
	flag.Parse()

	f, err := os.Open(*filepath)
	checkErr(err)

	csvr := csv.NewReader(f)
	defer f.Close()

	// create node map
	var nodeMap = make(map[string]*HierarchicalDimensionOption, 0)
	var topLevelNodes []*HierarchicalDimensionOption

	// discard header
	_, err = csvr.Read()
	checkErr(err)

	for err == nil {

		record, err := csvr.Read()
		if err != nil {
			break
		}

		option := &HierarchicalDimensionOption{
			CodeList:   record[0],
			Code:       record[1],
			Label:      record[2],
			ParentCode: record[3],
		}

		nodeMap[option.Code] = option

		log.Debug(fmt.Sprintf("%+v", option), nil)

		if option.ParentCode == "" {


			topLevelNodes = append(topLevelNodes, option)
		}
	}

	// populate children
	for _, entry := range nodeMap {

		if nodeMap[entry.ParentCode] == nil {
			fmt.Println("Entry not found for label code " + entry.ParentCode)
			continue
		}

		nodeMap[entry.ParentCode].Children = append(nodeMap[entry.ParentCode].Children, entry)
	}

	createCypherScript(topLevelNodes)
}

func createCypherScript(topLevelNodes []*HierarchicalDimensionOption) {

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

func traverseNodesWriteCypher(nodes []*HierarchicalDimensionOption, buffer *bytes.Buffer, parent *HierarchicalDimensionOption) {
	for _, node := range nodes {

		if parent != nil {
			buffer.WriteString(",\n")
		}

		buffer.WriteString(
			fmt.Sprintf("(%s:`_generic_hierarchy_node_%s` { code:'%s',label:'%s' })", node.Code, node.CodeList, node.Code, node.Label))
		if parent != nil {
			buffer.WriteString(
				fmt.Sprintf(",\n(%s)-[:hasParent]->(%s)", node.Code, parent.Code))
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
