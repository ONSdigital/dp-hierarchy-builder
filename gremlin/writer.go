package gremlin

import (
	"bytes"
	"fmt"
	"io/ioutil"
	"strings"

	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/go-ns/log"
)

var seenLabel = map[string]bool{}

// CreateGremlinDeleteFile generates a gremlin script file to delete an existing hierarchy for the given nodes
func CreateGremlinDeleteFile(nodes []*hierarchy.Node, filename string) error {

	deleteBuffer := &bytes.Buffer{}
	deleteBuffer.WriteString(fmt.Sprintf(
		"g.V().hasLabel('_generic_hierarchy_node_%s').outE().drop()\n"+
			"g.V().hasLabel('_generic_hierarchy_node_%s').drop()\n",
		nodes[0].CodeList, nodes[0].CodeList,
	))
	return ioutil.WriteFile(filename, deleteBuffer.Bytes(), 0644)
}

// CreateGremlinFile generates gremlin script for the given hierarchy nodes and writes it to file
func CreateGremlinFile(nodes []*hierarchy.Node, filename string) error {

	gremlin, err := CreateGremlin(nodes)
	if err != nil {
		return err
	}

	return ioutil.WriteFile(filename, []byte(gremlin), 0644)
}

// CreateGremlin creates a gremlin script representation of the given nodes
func CreateGremlin(nodes []*hierarchy.Node) (string, error) {

	var buffer = &bytes.Buffer{}
	traverseNodesWriteGremlin(nodes, buffer, nil, nil)
	return buffer.String(), nil
}

func traverseNodesWriteGremlin(nodes []*hierarchy.Node, buffer *bytes.Buffer, safeParentID, parentCodeList *string) {
	for _, node := range nodes {

		// 'CodeList--Code' used as node ID for uniqueness
		safeCode := escapeGremlin(node.Code)
		nodeID := node.CodeList + "--" + safeCode
		createNode := fmt.Sprintf(
			"g.addV('_generic_hierarchy_node_%s').property(id,'%s').property(single,'code','%s').property(single,'label','%s')",
			node.CodeList, nodeID, safeCode, escapeGremlin(node.Label),
		)

		if safeParentID == nil {
			buffer.WriteString(createNode + ".next()\n")

		} else {
			// suffix the create node statement with the creation of the (outgoing) edge to its parent
			buffer.WriteString(fmt.Sprintf(
				"%s.\n\taddE('hasParent').to(g.V().hasId('%s')).property(single,'code','%s').property(single,'parent','_generic_hierarchy_node_%s').next()\n",
				createNode, *safeParentID, safeCode, *parentCodeList,
			))
		}

		if node.Children != nil {
			traverseNodesWriteGremlin(node.Children, buffer, &nodeID, &node.CodeList)
		}
	}
}

func escapeGremlin(label string) string {
	escapedLabel := strings.Replace(label, "'", "\\'", -1)
	if label != escapedLabel {
		if _, ok := seenLabel[label]; !ok {
			log.Info("trim", log.Data{"esc": escapedLabel})
			seenLabel[label] = true
		}
	}
	return escapedLabel
}
