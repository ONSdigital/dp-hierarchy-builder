package main

import (
	bolt "github.com/johnnadratowski/golang-neo4j-bolt-driver"
	"log"
	"time"
	"fmt"
	"flag"
)

var codeListID = flag.String("code-list-id", "e44de4c4-d39e-4e2f-942b-3ca10584d078", "")
var instanceID = flag.String("instance-id", "12345", "")
var dimensionName = flag.String("dimension-name", "Aggregate", "")

func main() {

	driver := bolt.NewDriver()

	connection, err := driver.OpenNeo("bolt://localhost:7687")
	if err != nil {
		return
	}
	defer connection.Close()

	createInstanceHierarcyConstraints(connection)
	if err != nil {
		log.Println(err.Error())
		return
	}

	err = cloneNodes(connection)
	if err != nil {
		log.Println(err.Error())
	}

	err = cloneRelationships(connection)
	if err != nil {
		log.Println(err.Error())
	}

	// mark nodes that have data
	err = setHasData(connection)
	if err != nil {
		log.Println(err.Error())
	}

	// prune branches with no data

	// set the number of children
	err = setNumberOfChildren(connection)
	if err != nil {
		log.Println(err.Error())
	}

}
func createInstanceHierarcyConstraints(connection bolt.Conn) error {
	// CREATE CONSTRAINT ON (d:ASHE07E_Dimension6) ASSERT d.value IS UNIQUE;
	createConstraint := fmt.Sprintf("CREATE CONSTRAINT ON (n:`_hierarchy_node_%s_%s`) ASSERT n.code IS UNIQUE;", *instanceID, *dimensionName)
	stmtInsert, err := connection.PrepareNeo(createConstraint)
	if err != nil {
		return err
	}
	results, err := stmtInsert.ExecNeo(nil)
	if err != nil {
		return err
	}
	fmt.Println(results)
	stmtInsert.Close()

	return nil
}

func cloneNodes(connection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Cloning nodes from the generic hierarchy\n")

	insert := fmt.Sprintf("MATCH (n:`_generic_hierarchy_node_%s`) WITH n MERGE (:`_hierarchy_node_%s_%s` { code:n.code,label:n.label });", *codeListID, *instanceID, *dimensionName)
	log.Println(insert)

	stmtInsert, err := connection.PrepareNeo(insert)
	if err != nil {
		return err
	}

	results, err := stmtInsert.ExecNeo(nil)
	if err != nil {
		stmtInsert.Close()
		return err
	}
	fmt.Println(results)
	stmtInsert.Close()

	elapsed := time.Since(startTime)
	log.Printf("Time elapsed after query %s\n", elapsed)

	return nil
}


func cloneRelationships(connection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Cloning relationships from the generic hierarchy\n")

	insert := fmt.Sprintf("MATCH (genericNode:`_generic_hierarchy_node_%s`)-[r:hasParent]->(genericParent:`_generic_hierarchy_node_%s`)" +
		" WITH genericNode, genericParent" +
		" MATCH (node:`_hierarchy_node_%s_%s` { code:genericNode.code })" +
		", (parent:`_hierarchy_node_%s_%s` { code:genericParent.code }) " +
		"MERGE (node)-[r:hasParent]->(parent);", *codeListID, *codeListID, *instanceID, *dimensionName, *instanceID, *dimensionName)
	log.Println(insert)

	stmtInsert, err := connection.PrepareNeo(insert)
	if err != nil {
		return err
	}
	results, err := stmtInsert.ExecNeo(nil)
	if err != nil {
		stmtInsert.Close()
		return err
	}
	fmt.Println(results)

	stmtInsert.Close()

	elapsed := time.Since(startTime)
	log.Printf("Time elapsed after query %s\n", elapsed)

	return nil
}

func setNumberOfChildren(connection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Setting number of children on the instance hierarcy\n")

	insert := fmt.Sprintf("MATCH (n:`_hierarchy_node_%s_%s`)" +
		" with n SET n.numberOfChildren = size((n)<-[:hasParent]-(:`_hierarchy_node_%s_%s`))", *instanceID, *dimensionName, *instanceID, *dimensionName)

	log.Println(insert)

	stmtInsert, err := connection.PrepareNeo(insert)
	if err != nil {
		return err
	}

	results, err := stmtInsert.ExecNeo(nil)
	if err != nil {
		stmtInsert.Close()
		return err
	}
	fmt.Println(results)
	stmtInsert.Close()

	elapsed := time.Since(startTime)
	log.Printf("Time elapsed after query %s\n", elapsed)

	return nil
}

func setHasData(connection bolt.Conn) error {

	// this will eventually need to check that a dimension option has observations related to it
	// we are defaulting 'hasData' property to true for now while we only deal with datasets with no sparsity

	startTime := time.Now()
	log.Printf("*** Setting hasData property on the instance hierarcy\n")

	insert := fmt.Sprintf("MATCH (n:`_hierarchy_node_%s_%s`)" +
		" with n SET n.hasData = true", *instanceID, *dimensionName)

	log.Println(insert)

	stmtInsert, err := connection.PrepareNeo(insert)
	if err != nil {
		return err
	}

	results, err := stmtInsert.ExecNeo(nil)
	if err != nil {
		stmtInsert.Close()
		return err
	}
	fmt.Println(results)
	stmtInsert.Close()

	elapsed := time.Since(startTime)
	log.Printf("Time elapsed after query %s\n", elapsed)

	return nil
}
