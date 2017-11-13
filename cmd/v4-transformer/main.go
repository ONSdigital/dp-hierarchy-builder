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
	"github.com/ONSdigital/dp-hierarchy-builder/cmd/v4-transformer/v4"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
)

var filepath = flag.String("file", "cmd/v4-transformer/coicopcomb-inc-geo.csv", "The path to the import filepath")
var codeColumn = flag.Int("code", 5, "The column index of the code to parse")
var labelColumn = flag.Int("label", 6, "The column index of the label to parse")
var codeListID = flag.String("code-list-id", "e44de4c4-d39e-4e2f-942b-3ca10584d078", "")
var jsonFile = flag.String("json", "cmd/v4-transformer/output/hierarchy.json", "")
var cypherFile = flag.String("cypher", "cmd/v4-transformer/output/hierarchy.cypher", "")
var csvFile = flag.String("csv", "cmd/v4-transformer/output/hierarchy.csv", "")
var cypherDelFile = flag.String("cypher-delete", "cmd/v4-transformer/output/hierarchy-delete.cypher", "")

func main() {
	flag.Parse()

	f, err := os.Open(*filepath)
	checkErr(err)

	csvr := csv.NewReader(f)
	defer f.Close()

	var optionReader v4.DimensionOptionReader = v4.NewUniqueReader(*csvr, *codeColumn, *labelColumn)

	reader := v4.NewHierarchicalLabelReader(optionReader, "CPI")

	var labelIDToEntry = make(map[string]*hierarchy.Node)
	var topLevelNodes []*hierarchy.Node

	for {
		entry, err := reader.Read()
		if err != nil {
			break
		}

		labelIDToEntry[entry.LabelCode] = entry

		if entry.Level == 0 {
			topLevelNodes = append(topLevelNodes, entry)
		}
	}

	for _, entry := range labelIDToEntry {

		if entry.ParentLabelCode == "" {
			if entry.Level != 0 {
				log.Info("entry no parent, but level>0", log.Data{"entry": entry})
			}
			continue
		}

		if labelIDToEntry[entry.ParentLabelCode] == nil {
			fmt.Println("Entry not found for label code " + entry.ParentLabelCode)
			continue
		}

		labelIDToEntry[entry.ParentLabelCode].Children = append(labelIDToEntry[entry.ParentLabelCode].Children, entry)
	}

	createCypherScript(topLevelNodes)


	err = createCSV(topLevelNodes)
	checkErr(err)
}

func createCSV(nodes []*hierarchy.Node) error {

	log.Debug("Generating csv", nil)

	file, err := os.Create(*csvFile)
	checkErr(err)
	defer file.Close()

	return hierarchy.CreateCSV(nodes, file)
}

func createCypherScript(topLevelNodes []*hierarchy.Node) {

	var buffer = &bytes.Buffer{}

	buffer.WriteString("CREATE ")

	traverseNodesWriteCypher(topLevelNodes, buffer, nil)

	buffer.WriteString(";")

	err := ioutil.WriteFile(*cypherFile, buffer.Bytes(), 0644)
	checkErr(err)

	neoDeleteBuffer := &bytes.Buffer{}
	neoDeleteBuffer.WriteString(fmt.Sprintf("// Deleting nodes from full hierarchy\nMATCH (n:%s_generic_hierarchy_node_%s%s)\nDETACH DELETE n;\n", "`", *codeListID, "`"))
	err = ioutil.WriteFile(*cypherDelFile, neoDeleteBuffer.Bytes(), 0644)
	checkErr(err)
}

func traverseNodesWriteCypher(nodes []*hierarchy.Node, buffer *bytes.Buffer, parent *hierarchy.Node) {
	for _, node := range nodes {

		if parent != nil {
			buffer.WriteString(",\n")
		}

		buffer.WriteString(
			fmt.Sprintf("(%s:`_generic_hierarchy_node_%s` { code:'%s',label:'%s' })", node.Code, *codeListID, node.Code, node.Label))
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
