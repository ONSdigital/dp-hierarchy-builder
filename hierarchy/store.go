package hierarchy

import (
	"context"
	"errors"

	"github.com/ONSdigital/dp-graph/v2/graph/driver"
	"github.com/ONSdigital/log.go/log"
)

//go:generate moq -out hierarchytest/db.go -pkg hierarchytest . DB
type DB = driver.Hierarchy // type is declared locally to enable the above moq generation

// firstAttempt is the attempt nubmer passed to dp-graph queries
const firstAttempt = 1

var ErrAlreadyExists = errors.New("failed to build hierarchy as it already exists")

// Store represents storage for hierarchy data.
type Store struct {
	DB
}

// BuildHierarchy clones the necessary generic hierarchy subgraph, according to the existing codes in the nodes for instanceID and dimensionName
func (store *Store) BuildHierarchy(instanceID, codeListID, dimensionName string) error {

	logData := log.Data{
		"instance_id":    instanceID,
		"code_list_id":   codeListID,
		"dimension_name": dimensionName,
	}

	ctx := context.Background()
	hierarchyExists, err := store.HierarchyExists(ctx, instanceID, dimensionName)
	if err != nil {
		return err
	}
	if hierarchyExists {
		return ErrAlreadyExists
	}

	if err = store.CreateInstanceHierarchyConstraints(ctx, firstAttempt, instanceID, dimensionName); err != nil {
		return err
	}

	// Get codes from existing nodes
	codes, err := store.GetCodesWithData(ctx, firstAttempt, instanceID, dimensionName)
	if err != nil {
		if err == driver.ErrNotImplemented {
			// if this is not implemented, use the legacy hierarchy build algorithm (e.g. Neo4j) - note that the legacy algorithm doesn't implement dimension order
			return store.buildHierarchyLegacy(instanceID, codeListID, dimensionName)
		}
		return err
	}
	if len(codes) == 0 {
		log.Event(ctx, "no codes found for the provided instance and dimension. Nothing to clone", log.INFO, logData)
		return nil
	}

	// Get node IDs corresponding to generic hierarchy nodes with data
	nodesWithData, err := store.GetGenericHierarchyNodeIDs(ctx, firstAttempt, codeListID, codes)
	if err != nil {
		return err
	}

	// Get node IDs corresponding to generic hierarchy nodes which are ancestries to the nodes with data
	ancestryIDs, err := store.GetGenericHierarchyAncestriesIDs(ctx, firstAttempt, codeListID, codes)
	if err != nil {
		return err
	}

	// some ancestries may have data. Create a map with ancestries without data only.
	// note: for big datasets we expect len(ancestries) << len(nodesWithData), so we iterate ancestries for efficiency
	nodesWithoutData := map[string]string{}
	for id, code := range ancestryIDs {
		if _, found := nodesWithData[id]; !found {
			nodesWithoutData[id] = code
		}
	}

	// Create 'hasCode' edges if they don't exist
	if err := store.CreateHasCodeEdges(ctx, firstAttempt, codeListID, nodesWithData); err != nil {
		return err
	}
	if err := store.CreateHasCodeEdges(ctx, firstAttempt, codeListID, nodesWithoutData); err != nil {
		return err
	}

	// Clone necessary generic hierarchy nodes with data
	if err := store.CloneNodesFromIDs(ctx, firstAttempt, instanceID, codeListID, dimensionName, nodesWithData, true); err != nil {
		return err
	}

	// Clone necessary ancestry generic hierarchy nodes without data
	if err := store.CloneNodesFromIDs(ctx, firstAttempt, instanceID, codeListID, dimensionName, nodesWithoutData, false); err != nil {
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

	// Set order property to newly created nodes
	if err := store.CloneOrderFromIDs(ctx, codeListID, nodesWithData); err != nil {
		return err
	}
	if err := store.CloneOrderFromIDs(ctx, codeListID, nodesWithoutData); err != nil {
		return err
	}

	// Clone Relationships for the newly created nodes
	if err := store.CloneRelationshipsFromIDs(ctx, firstAttempt, instanceID, dimensionName, nodesWithData); err != nil {
		return err
	}

	if err := store.CloneRelationshipsFromIDs(ctx, firstAttempt, instanceID, dimensionName, nodesWithoutData); err != nil {
		return err
	}

	// Get newly created hierarchy node IDs
	newNodeIDs, err := store.GetHierarchyNodeIDs(ctx, firstAttempt, instanceID, dimensionName)
	if err != nil {
		return err
	}

	// Remove CloneEdges (concurrently in batches)
	if err := store.RemoveCloneEdgesFromSourceIDs(ctx, firstAttempt, newNodeIDs); err != nil {
		return err
	}

	// Set number of children for the newly created nodes
	if err = store.SetNumberOfChildrenFromIDs(ctx, firstAttempt, newNodeIDs); err != nil {
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
	if err = store.CreateInstanceHierarchyConstraints(ctx, firstAttempt, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.CloneNodes(ctx, firstAttempt, instanceID, codeListID, dimensionName); err != nil {
		return err
	}

	nodeCount, err := store.CountNodes(ctx, instanceID, dimensionName)
	if err != nil {
		return err
	}

	if nodeCount < 1 {
		return errors.New("No nodes created - missing generic hierarchy?")
	}

	if err = store.CloneRelationships(ctx, firstAttempt, instanceID, codeListID, dimensionName); err != nil {
		return err
	}

	if err = store.SetHasData(ctx, firstAttempt, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.MarkNodesToRemain(ctx, firstAttempt, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.RemoveNodesNotMarkedToRemain(ctx, firstAttempt, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.RemoveRemainMarker(ctx, firstAttempt, instanceID, dimensionName); err != nil {
		return err
	}

	if err = store.SetNumberOfChildren(ctx, firstAttempt, instanceID, dimensionName); err != nil {
		return err
	}

	log.Event(ctx, "hierarchy build complete", log.INFO, logData)

	return nil
}
