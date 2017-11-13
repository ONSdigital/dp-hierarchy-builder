package main

/**

This generator takes a v4 file and infers a hierarchy from the code in the label.

 */

import (
	"flag"
	"fmt"
	"os"

	"github.com/ONSdigital/go-ns/log"
	"strings"
	"bytes"
	"io/ioutil"
	"encoding/csv"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
)

var filepath = flag.String("file", "cmd/geography-transformer/WD16_LAD16_CTY16_OTH_UK_LU.csv", "The path to the import filepath")
var csvFile = flag.String("csv", "cmd/geography-transformer/output/hierarchy.csv", "")
var cypherFile = flag.String("cypher", "cmd/geography-transformer/output/hierarchy.cypher", "")
var cypherDelFile = flag.String("cypher-delete", "cmd/hierarchy-transformer/output/hierarchy-delete.cypher", "")

func main() {
	flag.Parse()

	f, err := os.Open(*filepath)
	checkErr(err)

	csvr := csv.NewReader(f)
	defer f.Close()


	var nodeMap = make(map[string]*hierarchy.Node, 0)
	var topLevelNodes []*hierarchy.Node


	record, err := csvr.Read()
	checkErr(err)

	codelists := make([]string, len(record) / 2)

	// read the header row and populate an array of code list ID's as they are spread across the header row.
	for i, cell := range record {

		isCode := i % 2 == 0
		codelistIndex := i / 2

		if isCode {
			codelists[codelistIndex] = strings.TrimSuffix(cell, "CD")
		}
	}

	// read the rest of the CSV rows and populate a map of node objects with the code as the key.
	for err == nil {

		record, err := csvr.Read()
		if err != nil {
			break
		}

		// each row has a number of codes, so iterate through the row and pick out each code / label
		for i, code := range record {

			isCode := i % 2 == 0
			codelistIndex := i / 2

			// create a node for each code in the row
			// the code will be empty where gaps exist between an area and its parent so ignore them
			if isCode && len(code) > 0 {

				// skip it if its already been added.
				if _, ok := nodeMap[code]; !ok {

					parentCode := ""
					parentCodeIndex := i+2

					// only get the parent code if its not the last column
					if i+2 < len(record) {
						parentCode = record[parentCodeIndex]

						// if a parent code is not found next to this code, try looking in the next columns
						for parentCode == ""  {
							parentCodeIndex = parentCodeIndex + 2
							parentCode = record[parentCodeIndex]

							log.Debug(fmt.Sprintf("%+v: %+v", code, parentCode), nil)
						}
					}

					trimmedLabel := strings.Trim(record[i+1], " ")
					escapedLabel := strings.Replace(trimmedLabel, "'", "\\'", -1)

					codelist := codelists[codelistIndex]
					codelist = "123" // todo : multiple codelists in a single geog - what to do???

					option := &hierarchy.Node{
						CodeList:   codelist,
						Code:       code,
						Label:      escapedLabel,
						ParentCode: parentCode,
					}

					nodeMap[code] = option

					if option.ParentCode == "" {
						topLevelNodes = append(topLevelNodes, option)
					}
					//log.Debug(fmt.Sprintf("%+v", option), nil)
				}
			}
		}
	}

	// populate children
	for _, entry := range nodeMap {

		if nodeMap[entry.ParentCode] == nil {
			fmt.Println("Entry not found for label code " + entry.ParentCode)
			continue
		}


		//log.Debug(fmt.Sprintf("%+v %+v", entry, nodeMap[entry.ParentCode]), nil)
		nodeMap[entry.ParentCode].Children = append(nodeMap[entry.ParentCode].Children, entry)
	}

	log.Debug("Generating cypher script", nil)
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
	neoDeleteBuffer.WriteString(fmt.Sprintf("// Deleting nodes from full hierarchy\nMATCH (n:%s_generic_hierarchy_node_%s%s)\nDETACH DELETE n;\n", "`", topLevelNodes[0].CodeList, "`"))
	err = ioutil.WriteFile(*cypherDelFile, neoDeleteBuffer.Bytes(), 0644)
	checkErr(err)
}

func traverseNodesWriteCypher(nodes []*hierarchy.Node, buffer *bytes.Buffer, parent *hierarchy.Node) {
	for i, node := range nodes {

		log.Debug(fmt.Sprintf("%+v", node), nil)

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
