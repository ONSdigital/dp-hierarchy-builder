package hierarchy

import (
	"fmt"
	"github.com/ONSdigital/dp-hierarchy-builder/bolt"
	"github.com/ONSdigital/go-ns/log"
)

//go:generate moq -out hierarchytest/db_pool.go -pkg hierarchytest . DBPool

// Store represents storage for hierarchy data.
type Store struct {
	pool DBPool
}

// DBPool provides a pool of database connections
type DBPool interface {
	OpenPool() (bolt.Conn, error)
}

// NewStore returns a new store instace using the given DB connection.
func NewStore(pool DBPool) *Store {
	return &Store{
		pool: pool,
	}
}

func (store *Store) BuildHierarchy(instanceID, codeListID, dimensionName string) error {

	logData := log.Data{
		"instance_id":    instanceID,
		"code_list_id":   codeListID,
		"dimension_name": dimensionName,
	}

	log.Debug("requesting neo4j connection from the connection pool", logData)
	connection, err := store.pool.OpenPool()
	if err != nil {
		return err
	}

	defer connection.Close()

	createInstanceHierarchyConstraints(connection, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = cloneNodes(connection, instanceID, codeListID, dimensionName)
	if err != nil {
		return err
	}

	err = cloneRelationships(connection, instanceID, codeListID, dimensionName)
	if err != nil {
		return err
	}

	err = setHasData(connection, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = markNodesToRemain(connection, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = removeNodesNotMarkedToRemain(connection, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = removeRemainMarker(connection, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = setNumberOfChildren(connection, instanceID, dimensionName)
	if err != nil {
		return err
	}

	log.Debug("hierarchy build complete", logData)

	return nil
}

func createInstanceHierarchyConstraints(connection bolt.Conn, instanceID, dimensionName string) error {

	query := fmt.Sprintf(
		"CREATE CONSTRAINT ON (n:`_hierarchy_node_%s_%s`) ASSERT n.code IS UNIQUE;",
		instanceID,
		dimensionName,
	)

	logData := log.Data{
		"instance_id":    instanceID,
		"dimension_name": dimensionName,
		"query":          query,
	}

	log.Debug("creating instance hierarchy code constraint", logData)

	_, err := connection.ExecNeo(query, nil)
	return err
}

func cloneNodes(connection bolt.Conn, instanceID, codeListID, dimensionName string) error {

	query := fmt.Sprintf(
		"MATCH (n:`_generic_hierarchy_node_%s`) WITH n "+
			"MERGE (:`_hierarchy_node_%s_%s` { code:n.code,label:n.label,code_list:{code_list}, hasData:false });",
		codeListID,
		instanceID,
		dimensionName,
	)

	logData := log.Data{
		"instance_id":    instanceID,
		"code_list_id":   codeListID,
		"dimension_name": dimensionName,
		"query":          query,
	}

	log.Debug("cloning nodes from the generic hierarchy", logData)

	_, err := connection.ExecNeo(query, map[string]interface{}{"code_list": codeListID})
	return err
}

func cloneRelationships(connection bolt.Conn, instanceID, codeListID, dimensionName string) error {

	query := fmt.Sprintf(
		"MATCH (genericNode:`_generic_hierarchy_node_%s`)-[r:hasParent]->(genericParent:`_generic_hierarchy_node_%s`)"+
			" WITH genericNode, genericParent"+
			" MATCH (node:`_hierarchy_node_%s_%s` { code:genericNode.code })"+
			", (parent:`_hierarchy_node_%s_%s` { code:genericParent.code }) "+
			"MERGE (node)-[r:hasParent]->(parent);",
		codeListID,
		codeListID,
		instanceID,
		dimensionName,
		instanceID,
		dimensionName,
	)

	logData := log.Data{
		"instance_id":    instanceID,
		"code_list_id":   codeListID,
		"dimension_name": dimensionName,
		"query":          query,
	}

	log.Debug("cloning relationships from the generic hierarchy", logData)

	_, err := connection.ExecNeo(query, nil)
	return err
}

func setNumberOfChildren(connection bolt.Conn, instanceID, dimensionName string) error {

	query := fmt.Sprintf(
		"MATCH (n:`_hierarchy_node_%s_%s`)"+
			" with n SET n.numberOfChildren = size((n)<-[:hasParent]-(:`_hierarchy_node_%s_%s`))",
		instanceID,
		dimensionName,
		instanceID,
		dimensionName,
	)

	logData := log.Data{
		"instance_id":    instanceID,
		"dimension_name": dimensionName,
		"query":          query,
	}

	log.Debug("setting number of children property value on the instance hierarchy nodes", logData)

	_, err := connection.ExecNeo(query, nil)
	return err
}

func setHasData(connection bolt.Conn, instanceID, dimensionName string) error {

	query := fmt.Sprintf("MATCH (n:`_hierarchy_node_%s_%s`), (p:`_%s_%s`) "+
		"WHERE n.code = p.value SET n.hasData=true",
		instanceID,
		dimensionName,
		instanceID,
		dimensionName,
	)

	logData := log.Data{
		"instance_id":    instanceID,
		"dimension_name": dimensionName,
		"query":          query,
	}

	log.Debug("setting has data property on the instance hierarchy", logData)

	_, err := connection.ExecNeo(query, nil)
	return err
}

func markNodesToRemain(connection bolt.Conn, instanceID, dimensionName string) error {

	query := fmt.Sprintf("MATCH (parent:`_hierarchy_node_%s_%s`)<-[:hasParent*]-(child:`_hierarchy_node_%s_%s`) "+
		"WHERE child.hasData=true set parent.remain=true set child.remain=true",
		instanceID,
		dimensionName,
		instanceID,
		dimensionName,
	)

	logData := log.Data{
		"instance_id":    instanceID,
		"dimension_name": dimensionName,
		"query":          query,
	}

	log.Debug("marking nodes to remain after trimming sparse branches", logData)

	_, err := connection.ExecNeo(query, nil)
	return err
}

func removeNodesNotMarkedToRemain(connection bolt.Conn, instanceID, dimensionName string) error {

	query := fmt.Sprintf("MATCH (node:`_hierarchy_node_%s_%s`) WHERE NOT EXISTS(node.remain) DETACH DELETE node",
		instanceID,
		dimensionName,
	)

	logData := log.Data{
		"instance_id":    instanceID,
		"dimension_name": dimensionName,
		"query":          query,
	}

	log.Debug("removing nodes not marked to remain after trimming sparse branches", logData)

	_, err := connection.ExecNeo(query, nil)
	return err
}

func removeRemainMarker(connection bolt.Conn, instanceID, dimensionName string) error {

	query := fmt.Sprintf("MATCH (node:`_hierarchy_node_%s_%s`) REMOVE node.remain",
		instanceID,
		dimensionName,
	)

	logData := log.Data{
		"instance_id":    instanceID,
		"dimension_name": dimensionName,
		"query":          query,
	}

	log.Debug("removing the remain property from the nodes that remain", logData)

	_, err := connection.ExecNeo(query, nil)
	return err
}
