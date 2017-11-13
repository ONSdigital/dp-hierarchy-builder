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
	"encoding/csv"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/dp-hierarchy-builder/cypher"
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

	codelists := make([]string, len(record)/2)

	// read the header row and populate an array of code list ID's as they are spread across the header row.
	for i, cell := range record {

		isCode := i%2 == 0
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

			isCode := i%2 == 0
			codelistIndex := i / 2

			// create a node for each code in the row
			// the code will be empty where gaps exist between an area and its parent so ignore them
			if isCode && len(code) > 0 {

				// skip it if its already been added.
				if _, ok := nodeMap[code]; !ok {

					parentCode := ""
					parentCodeIndex := i + 2

					// only get the parent code if its not the last column
					if i+2 < len(record) {
						parentCode = record[parentCodeIndex]

						// if a parent code is not found next to this code, try looking in the next columns
						for parentCode == "" {
							parentCodeIndex = parentCodeIndex + 2
							parentCode = record[parentCodeIndex]
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

		nodeMap[entry.ParentCode].Children = append(nodeMap[entry.ParentCode].Children, entry)
	}

	log.Debug("Generating csv", nil)
	err = hierarchy.CreateCSVFile(topLevelNodes, *csvFile)
	logErr(err)

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
