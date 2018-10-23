package hierarchy

import (
	"errors"
	"fmt"
	"math"
	"math/rand"
	"strings"
	"time"

	"github.com/ONSdigital/go-ns/log"
	bolt "github.com/johnnadratowski/golang-neo4j-bolt-driver"
	neoErrors "github.com/johnnadratowski/golang-neo4j-bolt-driver/errors"
	"github.com/johnnadratowski/golang-neo4j-bolt-driver/structures/messages"
)

//go:generate moq -out hierarchytest/db_pool.go -pkg hierarchytest . DBPool

const transientErrorPrefix = "Neo.TransientError"

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

// ErrAttemptsExceededLimit is returned when the number of attempts has reaced
// the maximum permitted
type ErrAttemptsExceededLimit struct {
	WrappedErr error
}

func (e ErrAttemptsExceededLimit) Error() string {
	return fmt.Sprintf("number of attempts to execute statement exceeded: %s", e.WrappedErr.Error())
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

	err = createInstanceHierarchyConstraints(1, 5, connection, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = cloneNodes(connection, instanceID, codeListID, dimensionName)
	if err != nil {
		return err
	}

	var nodeCount int64
	nodeCount, err = countNodes(connection, fmt.Sprintf("_hierarchy_node_%s_%s", instanceID, dimensionName))
	if err != nil {
		return err
	}
	if nodeCount < 1 {
		return errors.New("No nodes created - missing generic hierarchy?")
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

func createInstanceHierarchyConstraints(attempt, maxAttempts int, connection bolt.Conn, instanceID, dimensionName string) error {

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

	if _, err := connection.ExecNeo(query, nil); err != nil {
		if !checkForRetry(err) {
			log.Info("received an error from neo4j that cannot be retried",
				log.Data{"instance_id": instanceID, "error": err})

			return err
		}

		time.Sleep(getSleepTime(attempt, 20*time.Millisecond))

		if attempt >= maxAttempts {
			return ErrAttemptsExceededLimit{err}
		}

		return createInstanceHierarchyConstraints(attempt+1, maxAttempts, connection, instanceID, dimensionName)
	}

	return nil

}

func checkForRetry(err error) bool {
	var neoErr string
	var boltErr *neoErrors.Error
	var ok bool

	if boltErr, ok = err.(*neoErrors.Error); ok {
		if failureMessage, ok := boltErr.Inner().(messages.FailureMessage); ok {
			if neoErr, ok = failureMessage.Metadata["code"].(string); !ok {
				return false
			}
		}
	}

	if strings.Contains(neoErr, transientErrorPrefix) {
		return true
	}

	return false
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

func countNodes(conn bolt.Conn, id string) (count int64, err error) {
	query := fmt.Sprintf("MATCH (n:`%s`) RETURN COUNT(n);", id)

	rowCursor, err := conn.QueryNeo(query, nil)
	if err != nil {
		return
	}
	defer func() {
		if err := rowCursor.Close(); err != nil {
			log.ErrorC("Deferred rowCursor.Close", err, log.Data{"id": id})
		}
	}()

	rows, _, err := rowCursor.All()
	if err != nil {
		return
	}

	var ok bool
	if count, ok = rows[0][0].(int64); !ok {
		err = errors.New("Could not get result from DB")
	}
	return
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

// getSleepTime will return a sleep time based on the attempt and initial retry time.
// It uses the algorithm 2^n where n is the attempt number (double the previous) and
// a randomization factor of between 0-5ms so that the server isn't being hit constantly
// at the same time by many clients
func getSleepTime(attempt int, retryTime time.Duration) time.Duration {
	n := (math.Pow(2, float64(attempt)))
	rand.Seed(time.Now().Unix())
	rnd := time.Duration(rand.Intn(4)+1) * time.Millisecond
	return (time.Duration(n) * retryTime) - rnd
}
