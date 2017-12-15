package main

import (
	"flag"
	"fmt"
	"log"
	"os"
	"strings"
	"time"

	bolt "github.com/johnnadratowski/golang-neo4j-bolt-driver"
)

var neoURL = flag.String("neo-url", "bolt://localhost:7687", "")
var codeListID = flag.String("code-list-id", "e44de4c4-d39e-4e2f-942b-3ca10584d078", "")
var instanceID = flag.String("instance-id", "12345", "")
var dimensionNameArg = flag.String("dimension-name", "Aggregate", "")
var dimensionName = ""

type neoArgMap map[string]interface{}

func main() {
	flag.Parse()
	dimensionName = strings.ToLower(*dimensionNameArg)

	driver := bolt.NewDriver()

	connection, err := driver.OpenNeo(*neoURL)
	if err != nil {
		log.Println(err.Error())
		os.Exit(1)
	}
	defer connection.Close()

	createInstanceHierarchyConstraints(connection)
	if err != nil {
		log.Println(err.Error())
		os.Exit(1)
	}

	err = cloneNodes(connection)
	if err != nil {
		log.Println(err.Error())
		os.Exit(1)
	}

	err = cloneRelationships(connection)
	if err != nil {
		log.Println(err.Error())
		os.Exit(1)
	}

	// mark nodes that have data
	err = setHasData(connection)
	if err != nil {
		log.Println(err.Error())
		os.Exit(1)
	}

	// prune branches with no data

	// set the number of children
	err = setNumberOfChildren(connection)
	if err != nil {
		log.Println(err.Error())
		os.Exit(1)
	}

}
func createInstanceHierarchyConstraints(connection bolt.Conn) error {
	// CREATE CONSTRAINT ON (d:ASHE07E_Dimension6) ASSERT d.value IS UNIQUE;
	createConstraint := fmt.Sprintf("CREATE CONSTRAINT ON (n:`_hierarchy_node_%s_%s`) ASSERT n.code IS UNIQUE;", *instanceID, dimensionName)
	stmtInsert, err := connection.PrepareNeo(createConstraint)
	if err != nil {
		return err
	}
	results, err := stmtInsert.ExecNeo(nil)
	if err != nil {
		return err
	}
	log.Println(results)
	stmtInsert.Close()

	return nil
}

func cloneNodes(connection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Cloning nodes from the generic hierarchy\n")

	insert := fmt.Sprintf("MATCH (n:`_generic_hierarchy_node_%s`) WITH n MERGE (:`_hierarchy_node_%s_%s` { code:n.code,label:n.label,code_list:{code_list} });", *codeListID, *instanceID, dimensionName)
	log.Println(insert)

	stmtInsert, err := connection.PrepareNeo(insert)
	if err != nil {
		return err
	}

	results, err := stmtInsert.ExecNeo(neoArgMap{"code_list": *codeListID})
	if err != nil {
		stmtInsert.Close()
		return err
	}
	log.Println(results)
	stmtInsert.Close()

	elapsed := time.Since(startTime)
	log.Printf("Time elapsed after query %s\n", elapsed)

	return nil
}

func cloneRelationships(connection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Cloning relationships from the generic hierarchy\n")

	insert := fmt.Sprintf("MATCH (genericNode:`_generic_hierarchy_node_%s`)-[r:hasParent]->(genericParent:`_generic_hierarchy_node_%s`)"+
		" WITH genericNode, genericParent"+
		" MATCH (node:`_hierarchy_node_%s_%s` { code:genericNode.code })"+
		", (parent:`_hierarchy_node_%s_%s` { code:genericParent.code }) "+
		"MERGE (node)-[r:hasParent]->(parent) SET node.has_data=false;", *codeListID, *codeListID, *instanceID, dimensionName, *instanceID, dimensionName)
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
	log.Println(results)

	stmtInsert.Close()

	elapsed := time.Since(startTime)
	log.Printf("Time elapsed after query %s\n", elapsed)

	return nil
}

func setNumberOfChildren(connection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Setting number of children on the instance hierarchy\n")

	insert := fmt.Sprintf("MATCH (n:`_hierarchy_node_%s_%s`)"+
		" with n SET n.numberOfChildren = size((n)<-[:hasParent]-(:`_hierarchy_node_%s_%s`))", *instanceID, dimensionName, *instanceID, dimensionName)

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
	log.Println(results)
	stmtInsert.Close()

	elapsed := time.Since(startTime)
	log.Printf("Time elapsed after query %s\n", elapsed)

	return nil
}

func setHasData(connection bolt.Conn) error {

	startTime := time.Now()
	log.Printf("*** Setting hasData property on the instance hierarchy\n")

	// If a node appears in the hierarchy_node_instance_name graph and the instance_name graph then we have data - set hasData=true
	insert := fmt.Sprintf("MATCH (n:`_hierarchy_node_%s_%s`), (p:`_%s_%s`) "+
		"WHERE n.code = p.value "+
		"SET n.has_data=true", *instanceID, dimensionName, *instanceID, dimensionName)

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
	log.Println(results)
	stmtInsert.Close()

	elapsed := time.Since(startTime)
	log.Printf("Time elapsed after query %s\n", elapsed)

	return nil
}
