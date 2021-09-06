package hierarchy

import (
	"context"
	"errors"

	"github.com/ONSdigital/log.go/v2/log"
)

// PopulateChildNodes takes a flat map of nodes and populates the children slice for each node.
func PopulateChildNodes(ctx context.Context, nodes *map[string]*Node) {

	nodeMap := *nodes

	for _, entry := range nodeMap {

		if nodeMap[entry.ParentCode] == nil {

			log.Error(ctx, "entry not found for label code", errors.New("entry not found for label code"), log.Data{
				"code":        entry.Code,
				"parent_code": entry.ParentCode,
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
