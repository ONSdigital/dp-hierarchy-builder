package hierarchy

import (
	"context"
	"errors"

	"github.com/ONSdigital/dp-graph/v2/graph"
	"github.com/ONSdigital/log.go/log"
)

// Store represents storage for hierarchy data.
type Store struct {
	*graph.DB
}

func (store *Store) BuildHierarchy(instanceID, codeListID, dimensionName string) error {

	logData := log.Data{
		"instance_id":    instanceID,
		"code_list_id":   codeListID,
		"dimension_name": dimensionName,
	}

	ctx := context.Background()

	var err error
	if err = store.CreateInstanceHierarchyConstraints(ctx, 1, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.CloneNodes(ctx, 1, instanceID, codeListID, dimensionName); err != nil {
		return err
	}

	nodeCount, err := store.CountNodes(ctx, instanceID, dimensionName)
	if err != nil {
		return err
	}

	if nodeCount < 1 {
		return errors.New("No nodes created - missing generic hierarchy?")
	}

	if err = store.CloneRelationships(ctx, 1, instanceID, codeListID, dimensionName); err != nil {
		return err
	}

	if err = store.SetHasData(ctx, 1, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.MarkNodesToRemain(ctx, 1, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.RemoveNodesNotMarkedToRemain(ctx, 1, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.RemoveRemainMarker(ctx, 1, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.SetNumberOfChildren(ctx, 1, instanceID, dimensionName); err != nil {
		return err
	}

	log.Event(ctx, "hierarchy build complete", log.INFO, logData)

	return nil
}
