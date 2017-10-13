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

	// prune branches with no data

	// populate breadcrumb

	// set the number of children
	err = setNumberOfChildren(connection)
	if err != nil {
		log.Println(err.Error())
	}

}
func createInstanceHierarcyConstraints(writeConnection bolt.Conn) error {
	// CREATE CONSTRAINT ON (d:ASHE07E_Dimension6) ASSERT d.value IS UNIQUE;
	createConstraint := fmt.Sprintf("CREATE CONSTRAINT ON (n:`_%s_hierarchy_node_%s`) ASSERT n.code IS UNIQUE;", *codeListID, *instanceID)
	stmtInsert, err := writeConnection.PrepareNeo(createConstraint)
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

func cloneNodes(writeConnection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Cloning nodes from the generic hierarchy\n")

	insert := fmt.Sprintf("MATCH (n:`_%s_hierarchy_node`) WITH n CREATE (:`_%s_hierarchy_node_%s` { code:n.code,label:n.label });", *codeListID, *codeListID, *instanceID)
	log.Println(insert)

	stmtInsert, err := writeConnection.PrepareNeo(insert)
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


func cloneRelationships(writeConnection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Cloning relationships from the generic hierarchy\n")

	insert := fmt.Sprintf("MATCH (genericNode:`_%s_hierarchy_node`)-[r:hasParent]->(genericParent:`_%s_hierarchy_node`)" +
		" WITH genericNode, genericParent" +
		" MATCH (node:`_%s_hierarchy_node_%s` { code:genericNode.code })" +
		", (parent:`_%s_hierarchy_node_%s` { code:genericParent.code }) " +
		"MERGE (node)-[r:hasParent]->(parent);", *codeListID, *codeListID, *codeListID, *instanceID, *codeListID, *instanceID)
	log.Println(insert)

	stmtInsert, err := writeConnection.PrepareNeo(insert)
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

func setNumberOfChildren(writeConnection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Setting number of children on the instance hierarcy\n")

	insert := fmt.Sprintf("MATCH (n:`_%s_hierarchy_node_%s`)" +
		" with n SET n.numberOfChildren = size((n)<-[:hasParent]-(:`_%s_hierarchy_node_%s`))", *codeListID, *instanceID, *codeListID, *instanceID)

	log.Println(insert)

	stmtInsert, err := writeConnection.PrepareNeo(insert)
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
