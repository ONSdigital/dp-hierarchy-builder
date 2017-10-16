package main

import (
	"bytes"
	"encoding/csv"
	"encoding/json"
	"flag"
	"fmt"
	"github.com/ONSdigital/dp-hierarchy-builder/cmd/generator/v4"
	"github.com/ONSdigital/go-ns/log"
	"io/ioutil"
	"os"
)

var filepath = flag.String("f", "cmd/generator/coicopcomb-inc-geo.csv", "The path to the import filepath")
var codeColumn = flag.Int("code", 5, "The column index of the code to parse")
var labelColumn = flag.Int("label", 6, "The column index of the label to parse")
var codeListID = flag.String("code-list-id", "e44de4c4-d39e-4e2f-942b-3ca10584d078", "")
var jsonFile = flag.String("json", "cmd/generator/output/hierarchy.json", "")
var cypherFile = flag.String("cypher", "cmd/generator/output/hierarchy.cypher", "")

func main() {

	f, err := os.Open(*filepath)
	checkErr(err)

	csvr := csv.NewReader(f)
	defer f.Close()

	var optionReader v4.DimensionOptionReader = v4.NewUniqueReader(*csvr, *codeColumn, *labelColumn)

	reader := v4.NewHierarchicalLabelReader(optionReader, "CPI")

	var labelIDToEntry map[string]*v4.HierarchicalDimensionOption = make(map[string]*v4.HierarchicalDimensionOption)
	var topLevelNodes []*v4.HierarchicalDimensionOption

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
			continue
		}

		if labelIDToEntry[entry.ParentLabelCode] == nil {
			fmt.Println("Entry not found for label code " + entry.ParentLabelCode)
			continue
		}

		labelIDToEntry[entry.ParentLabelCode].Children = append(labelIDToEntry[entry.ParentLabelCode].Children, entry)
	}

	createJsonScript(topLevelNodes)
	createCypherScript(topLevelNodes)

}
func createJsonScript(topLevelNodes []*v4.HierarchicalDimensionOption) {

	json, err := json.MarshalIndent(topLevelNodes, "", "  ")
	checkErr(err)

	err = ioutil.WriteFile(*jsonFile, json, 0644)
	checkErr(err)
}

func createCypherScript(topLevelNodes []*v4.HierarchicalDimensionOption) {

	var buffer = &bytes.Buffer{}

	buffer.WriteString("CREATE ")

	traverseNodesWriteCypher(topLevelNodes, buffer, nil)

	buffer.WriteString(";")

	err := ioutil.WriteFile(*cypherFile, buffer.Bytes(), 0644)
	checkErr(err)
}

func traverseNodesWriteCypher(nodes []*v4.HierarchicalDimensionOption, buffer *bytes.Buffer, parent *v4.HierarchicalDimensionOption) {
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
