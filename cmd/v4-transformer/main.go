package main

/**

This generator takes a v4 file and infers a hierarchy from the code in the label.

 */

import (
	"encoding/csv"
	"flag"
	"os"

	"github.com/ONSdigital/go-ns/log"
	"github.com/ONSdigital/dp-hierarchy-builder/cmd/v4-transformer/v4"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/dp-hierarchy-builder/cypher"
	"io"
	"errors"
)

var filepath = flag.String("file", "cmd/v4-transformer/coicopcomb-inc-geo.csv", "The path to the import filepath")
var codeColumn = flag.Int("code", 5, "The column index of the code to parse")
var labelColumn = flag.Int("label", 6, "The column index of the label to parse")
var codeListID = flag.String("code-list-id", "e44de4c4-d39e-4e2f-942b-3ca10584d078", "")
var rootLabelCode = flag.String("root-label-code", "CPI", "")
var jsonFile = flag.String("json", "cmd/v4-transformer/output/hierarchy.json", "")
var cypherFile = flag.String("cypher", "cmd/v4-transformer/output/hierarchy.cypher", "")
var csvFile = flag.String("csv", "cmd/v4-transformer/output/hierarchy.csv", "")
var cypherDelFile = flag.String("cypher-delete", "cmd/v4-transformer/output/hierarchy-delete.cypher", "")

func main() {
	flag.Parse()

	f, err := os.Open(*filepath)
	if err != nil {
		log.ErrorC("Failed to open input file", err, log.Data{"file": *filepath})
		os.Exit(1)
	}

	csvr := csv.NewReader(f)
	defer f.Close()

	var optionReader v4.DimensionOptionReader = v4.NewUniqueReader(*csvr, *codeColumn, *labelColumn)

	reader := v4.NewHierarchicalLabelReader(optionReader, *rootLabelCode, *codeListID)

	var labelIDToEntry = make(map[string]*hierarchy.Node)
	var rootNodes []*hierarchy.Node

	for {
		entry, err := reader.Read()
		if err != nil {
			if err != io.EOF {
				log.ErrorC("Failed to read CSV rows from the input file", err, log.Data{"file": *filepath})
				os.Exit(1)
			}

			break
		}

		labelIDToEntry[entry.LabelCode] = entry

		if entry.Level == 0 {
			rootNodes = append(rootNodes, entry)
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
			log.Error(errors.New("entry not found for label code"), log.Data{
				"code":        entry.Code,
				"parent code": entry.ParentCode,
			})
			continue
		}

		labelIDToEntry[entry.ParentLabelCode].Children = append(labelIDToEntry[entry.ParentLabelCode].Children, entry)
	}

	log.Debug("Generating cypher script", nil)
	err = cypher.CreateCypherFile(rootNodes, *cypherFile)
	logErr(err)

	log.Debug("Generating cypher deletion script", nil)
	err = cypher.CreateCypherDeleteFile(rootNodes, *cypherDelFile)
	logErr(err)
}

func logErr(err error) {
	if err != nil {
		log.Error(err, nil)
	}
}
