package cypher

import (
	"fmt"
	"github.com/ONSdigital/go-ns/log"
	"bytes"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"io/ioutil"
)

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

	buffer.WriteString("CREATE ")

	traverseNodesWriteCypher(nodes, buffer, nil)

	buffer.WriteString(";")

	return buffer.String(), nil
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