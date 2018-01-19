package hierarchy

import (
	"fmt"
	"github.com/ONSdigital/go-ns/log"
	bolt "github.com/ONSdigital/golang-neo4j-bolt-driver"
)

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

	stmt, err := connection.PrepareNeo(query)
	if err != nil {
		return err
	}

	_, err = stmt.ExecNeo(nil)
	if err != nil {
		return err
	}
	stmt.Close()

	return nil
}

func cloneNodes(connection bolt.Conn, instanceID, codeListID, dimensionName string) error {

	query := fmt.Sprintf(
		"MATCH (n:`_generic_hierarchy_node_%s`) WITH n "+
			"MERGE (:`_hierarchy_node_%s_%s` { code:n.code,label:n.label,code_list:{code_list} });",
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

	stmt, err := connection.PrepareNeo(query)
	if err != nil {
		return err
	}
	defer stmt.Close()

	_, err = stmt.ExecNeo(map[string]interface{}{"code_list": codeListID})
	if err != nil {
		return err
	}

	return nil
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

	stmt, err := connection.PrepareNeo(query)
	if err != nil {
		return err
	}
	defer stmt.Close()

	_, err = stmt.ExecNeo(nil)
	if err != nil {
		return err
	}

	return nil
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

	stmt, err := connection.PrepareNeo(query)
	if err != nil {
		return err
	}
	defer stmt.Close()

	_, err = stmt.ExecNeo(nil)
	if err != nil {
		return err
	}

	return nil
}

func setHasData(connection bolt.Conn, instanceID, dimensionName string) error {

	// todo: check that a dimension option has observations related to it
	// we are defaulting 'hasData' property to true for now while we only deal with datasets with no sparsity

	query := fmt.Sprintf("MATCH (n:`_hierarchy_node_%s_%s`)"+
		" with n SET n.hasData = true",
		instanceID,
		dimensionName,
	)

	logData := log.Data{
		"instance_id":    instanceID,
		"dimension_name": dimensionName,
		"query":          query,
	}

	log.Debug("setting has data property on the instance hierarchy", logData)

	stmt, err := connection.PrepareNeo(query)
	if err != nil {
		return err
	}
	defer stmt.Close()

	_, err = stmt.ExecNeo(nil)
	if err != nil {
		return err
	}

	return nil
}
