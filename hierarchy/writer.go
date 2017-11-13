package hierarchy

import (
	"fmt"
	"encoding/csv"
	"github.com/ONSdigital/go-ns/log"
	"io"
	"os"
)

// CreateCSVFile generates hierarchy csv content and writes it to the given file.
func CreateCSVFile(nodes []*Node, filename string) error {

	file, err := os.Create(filename)
	if err != nil {
		return err
	}
	defer file.Close()

	return CreateCSV(nodes, file)
}

// CreateCSV creates a CSV representation of the given nodes and writes it to the given file.
func CreateCSV(nodes []*Node, writer io.Writer) error {

	csvWriter := csv.NewWriter(writer)
	csvWriter.Write([]string{"Codelist", "Code", "Label", "ParentCode"})

	return traverseNodesWriteCSV(nodes, csvWriter, nil, 0)
}

// Recursive function to traverse the tree of nodes and write to csvWriter.
func traverseNodesWriteCSV(nodes []*Node, csvWriter *csv.Writer, parent *Node, level int) error {
	for _, node := range nodes {

		parentCode := ""

		if parent != nil {
			parentCode = parent.Code
		}

		err := csvWriter.Write([]string{node.CodeList, node.Code, node.Label, parentCode})
		if err != nil {
			return err
		}

		csvWriter.Flush()

		if node.Children != nil {

			log.Debug(fmt.Sprintf("%s %+v", level, node.Code), nil)
			traverseNodesWriteCSV(node.Children, csvWriter, node, level+1)
		}
	}

	return nil
}
