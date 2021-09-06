package main

/**

This generator takes a v4 file and infers a hierarchy from the code in the label.

*/

import (
	"context"
	"encoding/csv"
	"errors"
	"flag"
	"os"

	"io"

	"github.com/ONSdigital/dp-hierarchy-builder/cmd/v4-transformer/v4"
	"github.com/ONSdigital/dp-hierarchy-builder/cypher"
	"github.com/ONSdigital/dp-hierarchy-builder/gremlin"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/log.go/v2/log"
)

var filepath = flag.String("file", "cmd/v4-transformer/coicopcomb-inc-geo.csv", "The path to the import filepath")
var codeColumn = flag.Int("code", 5, "The column index of the code to parse")
var labelColumn = flag.Int("label", 6, "The column index of the label to parse")
var codeListID = flag.String("code-list-id", "e44de4c4-d39e-4e2f-942b-3ca10584d078", "")
var rootLabelCode = flag.String("root-label-code", "CPI", "")
var jsonFile = flag.String("json", "cmd/v4-transformer/output/hierarchy.json", "")
var cypherFile = flag.String("cypher", "cmd/v4-transformer/output/hierarchy.cypher", "")
var gremlinFile = flag.String("gremlin", "cmd/v4-transformer/output/hierarchy.gremlin", "")
var csvFile = flag.String("csv", "cmd/v4-transformer/output/hierarchy.csv", "")
var cypherDelFile = flag.String("cypher-delete", "cmd/v4-transformer/output/hierarchy-delete.cypher", "")
var gremlinDelFile = flag.String("gremlin-delete", "cmd/v4-transformer/output/hierarchy-delete.gremlin", "")

func main() {

	ctx := context.Background()
	flag.Parse()

	f, err := os.Open(*filepath)
	if err != nil {
		log.Error(ctx, "Failed to open input file", err, log.Data{"file": *filepath})
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
				log.Error(ctx, "Failed to read CSV rows from the input file", err, log.Data{"file": *filepath})
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
				log.Info(ctx, "entry no parent, but level>0", log.Data{"entry": entry})
			}
			continue
		}

		if labelIDToEntry[entry.ParentLabelCode] == nil {

			log.Error(ctx, "entry not found for label code", errors.New("entry not found for label code"), log.Data{
				"code":        entry.Code,
				"parent code": entry.ParentCode,
			})

			continue
		}

		labelIDToEntry[entry.ParentLabelCode].Children = append(labelIDToEntry[entry.ParentLabelCode].Children, entry)
	}

	log.Info(ctx, "Generating cypher script")
	err = cypher.CreateCypherFile(rootNodes, *cypherFile)
	logIfError(ctx, err, "error generating cypher script")

	log.Info(ctx, "Generating cypher deletion script")
	err = cypher.CreateCypherDeleteFile(rootNodes, *cypherDelFile)
	logIfError(ctx, err, "error generating cypher deletion script")

	log.Info(ctx, "Generating gremlin script")
	err = gremlin.CreateGremlinFile(rootNodes, *gremlinFile)
	logIfError(ctx, err, "error generating gremlin script")

	log.Info(ctx, "Generating gremlin deletion script")
	err = gremlin.CreateGremlinDeleteFile(rootNodes, *gremlinDelFile)
	logIfError(ctx, err, "error generating gremlin deletion script")
}

func logIfError(ctx context.Context, err error, message string) {
	if err != nil {
		log.Error(ctx, message, err)
	}
}
