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

type database struct {
	maxRetries int
	conn       bolt.Conn
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

	db := &database{5, nil}

	log.Debug("requesting neo4j connection from the connection pool", logData)
	var err error
	db.conn, err = store.pool.OpenPool()
	if err != nil {
		return err
	}

	defer db.conn.Close()

	err = db.createInstanceHierarchyConstraints(1, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = db.cloneNodes(1, instanceID, codeListID, dimensionName)
	if err != nil {
		return err
	}

	var nodeCount int64
	nodeCount, err = countNodes(db.conn, fmt.Sprintf("_hierarchy_node_%s_%s", instanceID, dimensionName))
	if err != nil {
		return err
	}
	if nodeCount < 1 {
		return errors.New("No nodes created - missing generic hierarchy?")
	}

	err = db.cloneRelationships(1, instanceID, codeListID, dimensionName)
	if err != nil {
		return err
	}

	err = db.setHasData(1, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = db.markNodesToRemain(1, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = db.removeNodesNotMarkedToRemain(1, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = db.removeRemainMarker(1, instanceID, dimensionName)
	if err != nil {
		return err
	}

	err = db.setNumberOfChildren(1, instanceID, dimensionName)
	if err != nil {
		return err
	}

	log.Debug("hierarchy build complete", logData)

	return nil
}

func (db *database) createInstanceHierarchyConstraints(attempt int, instanceID, dimensionName string) error {

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

	if _, err := db.conn.ExecNeo(query, nil); err != nil {
		if finalErr := db.checkAttempts(err, instanceID, attempt); finalErr != nil {
			return finalErr
		}

		return db.createInstanceHierarchyConstraints(attempt+1, instanceID, dimensionName)
	}

	return nil

}

func (db *database) cloneNodes(attempt int, instanceID, codeListID, dimensionName string) error {

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

	if _, err := db.conn.ExecNeo(query, map[string]interface{}{"code_list": codeListID}); err != nil {
		if finalErr := db.checkAttempts(err, instanceID, attempt); finalErr != nil {
			return finalErr
		}

		return db.cloneNodes(attempt+1, instanceID, codeListID, dimensionName)
	}

	return nil

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

func (db *database) cloneRelationships(attempt int, instanceID, codeListID, dimensionName string) error {

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

	if _, err := db.conn.ExecNeo(query, nil); err != nil {
		if finalErr := db.checkAttempts(err, instanceID, attempt); finalErr != nil {
			return finalErr
		}

		return db.cloneRelationships(attempt+1, instanceID, codeListID, dimensionName)
	}

	return nil
}

func (db *database) setNumberOfChildren(attempt int, instanceID, dimensionName string) error {

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

	if _, err := db.conn.ExecNeo(query, nil); err != nil {
		if finalErr := db.checkAttempts(err, instanceID, attempt); finalErr != nil {
			return finalErr
		}

		return db.setNumberOfChildren(attempt+1, instanceID, dimensionName)
	}

	return nil
}

func (db *database) setHasData(attempt int, instanceID, dimensionName string) error {

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

	if _, err := db.conn.ExecNeo(query, nil); err != nil {
		if finalErr := db.checkAttempts(err, instanceID, attempt); finalErr != nil {
			return finalErr
		}

		return db.setHasData(attempt+1, instanceID, dimensionName)
	}

	return nil
}

func (db *database) markNodesToRemain(attempt int, instanceID, dimensionName string) error {

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

	if _, err := db.conn.ExecNeo(query, nil); err != nil {
		if finalErr := db.checkAttempts(err, instanceID, attempt); finalErr != nil {
			return finalErr
		}

		return db.markNodesToRemain(attempt+1, instanceID, dimensionName)
	}

	return nil
}

func (db *database) removeNodesNotMarkedToRemain(attempt int, instanceID, dimensionName string) error {

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

	if _, err := db.conn.ExecNeo(query, nil); err != nil {
		if finalErr := db.checkAttempts(err, instanceID, attempt); finalErr != nil {
			return finalErr
		}

		return db.removeNodesNotMarkedToRemain(attempt+1, instanceID, dimensionName)
	}

	return nil
}

func (db *database) removeRemainMarker(attempt int, instanceID, dimensionName string) error {

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

	if _, err := db.conn.ExecNeo(query, nil); err != nil {
		if finalErr := db.checkAttempts(err, instanceID, attempt); finalErr != nil {
			return finalErr
		}

		return db.removeRemainMarker(attempt+1, instanceID, dimensionName)
	}

	return nil
}

func (db *database) checkAttempts(err error, instanceID string, attempt int) error {
	if !isTransientError(err) {
		log.Info("received an error from neo4j that cannot be retried",
			log.Data{"instance_id": instanceID, "error": err})

		return err
	}

	time.Sleep(getSleepTime(attempt, 20*time.Millisecond))

	if attempt >= db.maxRetries {
		return ErrAttemptsExceededLimit{err}
	}

	return nil
}

func isTransientError(err error) bool {
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
