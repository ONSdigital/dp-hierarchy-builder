package cypher

import (
	"bytes"
	"context"
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/log.go/v2/log"
)

var seenLabel = map[string]bool{}

// CreateCypherDeleteFile generates a cypher script file to delete an existing hierarchy for the given nodes.
func CreateCypherDeleteFile(nodes []*hierarchy.Node, filename string) error {

	neoDeleteBuffer := &bytes.Buffer{}
	neoDeleteBuffer.WriteString(fmt.Sprintf("// Deleting nodes from full hierarchy\nMATCH (n:%s_generic_hierarchy_node_%s%s)\nDETACH DELETE n;\n", "`", nodes[0].CodeList, "`"))
	return ioutil.WriteFile(filename, neoDeleteBuffer.Bytes(), 0644)
}

// CreateCypherFile generates cypher script for the given hierarchy nodes and writes it to file.
func CreateCypherFile(nodes []*hierarchy.Node, filename string) error {

	cypher, err := CreateCypher(nodes)
	if err != nil {
		return err
	}

	return ioutil.WriteFile(filename, []byte(cypher), 0644)
}

// CreateCypher creates a cypher script representation of the given nodes.
func CreateCypher(nodes []*hierarchy.Node) (string, error) {

	var buffer = &bytes.Buffer{}

	buffer.WriteString(
		fmt.Sprintf("CREATE CONSTRAINT ON (n:`_generic_hierarchy_node_%s`) ASSERT n.code IS UNIQUE;\n", nodes[0].CodeList))

	traverseNodesWriteCypher(nodes, buffer, nil)

	return buffer.String(), nil
}

func traverseNodesWriteCypher(nodes []*hierarchy.Node, buffer *bytes.Buffer, parent *hierarchy.Node) {
	for _, node := range nodes {

		createNode := fmt.Sprintf("CREATE (node:`_generic_hierarchy_node_%s` { code:'%s',label:'%s' })", node.CodeList, node.Code, escapeLabel(node.Label))

		if parent == nil {
			buffer.WriteString(createNode + ";\n")
		} else {

			// inject the create node statement into a larger statement that also creates the relation to its parent
			buffer.WriteString(
				fmt.Sprintf("MATCH (parent:`_generic_hierarchy_node_%s` { code:'%s' })\nWITH parent %s-[:hasParent]->(parent);\n", node.CodeList, parent.Code, createNode))
		}

		if node.Children != nil {
			traverseNodesWriteCypher(node.Children, buffer, node)
		}
	}
}

func escapeLabel(label string) string {
	escapedLabel := strings.Replace(label, "'", "\\'", -1)
	if label != escapedLabel {
		if _, ok := seenLabel[label]; !ok {
			log.Info(context.Background(), "trim", log.Data{"esc": escapedLabel})
			seenLabel[label] = true
		}
	}
	return escapedLabel
}
