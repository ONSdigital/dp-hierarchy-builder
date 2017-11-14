package hierarchy

import (
	"errors"
	"github.com/ONSdigital/go-ns/log"
)

// PopulateChildNodes takes a flat map of nodes and populates the children slice for each node.
func PopulateChildNodes(nodes *map[string]*Node) {

	nodeMap := *nodes

	for _, entry := range nodeMap {

		if nodeMap[entry.ParentCode] == nil {
			log.Error(errors.New("entry not found for label code"), log.Data{
				"code":        entry.Code,
				"parent code": entry.ParentCode,
			})
			continue
		}

		nodeMap[entry.ParentCode].Children = append(nodeMap[entry.ParentCode].Children, entry)
	}
}

// IdentifyRootNodes returns a slice of nodes from the given map that have no parent.
func IdentifyRootNodes(nodes *map[string]*Node) []*Node {

	nodeMap := *nodes

	var topLevelNodes []*Node

	for _, node := range nodeMap {

		if node.ParentCode == "" {
			topLevelNodes = append(topLevelNodes, node)
		}
	}

	return topLevelNodes
}
