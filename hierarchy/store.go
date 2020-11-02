package hierarchy

import (
	"context"
	"errors"

	"github.com/ONSdigital/dp-graph/v2/graph"
	"github.com/ONSdigital/dp-graph/v2/graph/driver"
	"github.com/ONSdigital/log.go/log"
)

// Store represents storage for hierarchy data.
type Store struct {
	*graph.DB
}

// BuildHierarchy clones the necessary generic hierarchy subgraph, according to the existing codes in the nodes for instanceID and dimensionName
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

	// Get codes from existing nodes
	codes, err := store.GetCodesWithData(ctx, 1, instanceID, dimensionName)
	if err != nil {
		if err == driver.ErrNotImplemented {
			// if this is not implemented, use the legacy hierarchy build algorithm (e.g. Neo4j)
			return store.buildHierarchyLegacy(instanceID, codeListID, dimensionName)
		}
		return err
	}
	if len(codes) == 0 {
		log.Event(ctx, "no codes found for the provided instance and dimension. Nothing to clone", log.INFO, logData)
		return nil
	}

	// Get node IDs corresponding to generic hierarchy nodes with data (leaves)
	leafIDs, err := store.GetGenericHierarchyNodeIDs(ctx, 1, codeListID, codes)
	if err != nil {
		return err
	}

	// Get node IDs corresponding to generic hierarchy nodes without data (ancestries)
	ancestryIDs, err := store.GetGenericHierarchyAncestriesIDs(ctx, 1, codeListID, codes)
	if err != nil {
		return err
	}

	// Clone necessary generic hierarchy nodes
	if err := store.CloneNodesFromIDs(ctx, 1, instanceID, codeListID, dimensionName, leafIDs, true); err != nil {
		return err
	}

	// Clone necessary ancestry generic hierarchy nodes
	if err := store.CloneNodesFromIDs(ctx, 1, instanceID, codeListID, dimensionName, ancestryIDs, false); err != nil {
		return err
	}

	// nodeCount is the total number of nodes (leafs and ancestries)
	nodeCount, err := store.CountNodes(ctx, instanceID, dimensionName)
	if err != nil {
		return err
	}

	if nodeCount < 1 {
		return errors.New("No nodes created - missing generic hierarchy or trying to clone nodes with no data?")
	}
	logData["node_count"] = nodeCount

	// Clone Relationships for the newly created nodes
	if err := store.CloneRelationshipsFromIDs(ctx, 1, instanceID, dimensionName, leafIDs); err != nil {
		return err
	}

	if err := store.CloneRelationshipsFromIDs(ctx, 1, instanceID, dimensionName, ancestryIDs); err != nil {
		return err
	}

	// Get newly created hierarchy node IDs
	newNodeIDs, err := store.GetHierarchyNodeIDs(ctx, 1, instanceID, dimensionName)
	if err != nil {
		return err
	}

	// Remove CloneEdges (concurrently in batches)
	if err := store.RemoveCloneEdgesFromSourceIDs(ctx, 1, newNodeIDs); err != nil {
		return err
	}

	// Set number of children for the newly created nodes
	if err = store.SetNumberOfChildrenFromIDs(ctx, 1, newNodeIDs); err != nil {
		return err
	}

	log.Event(ctx, "hierarchy build complete", log.INFO, logData)

	return nil
}

// buildHierarchyLegacy builds the hierarchy by cloning all generic nodes and then removing the
// ones that we don't need. This method is deprecated, but kept until all drivers implement the new BuildHierarchy queries.
func (store *Store) buildHierarchyLegacy(instanceID, codeListID, dimensionName string) error {

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
