package hierarchy

import (
	"fmt"
	"github.com/ONSdigital/dp-hierarchy-builder/bolt/bolttest"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy/hierarchytest"
	"github.com/ONSdigital/golang-neo4j-bolt-driver"
	bolt "github.com/ONSdigital/golang-neo4j-bolt-driver"
	"github.com/pkg/errors"
	. "github.com/smartystreets/goconvey/convey"
	"testing"
)

const (
	instanceID    = "123"
	codeListID    = "312"
	dimensionName = "age"
)

var (
	dbPoolErr = errors.New("the db pool is broken")
	execErr   = errors.New("failed to execute query")
)

func TestStore_BuildHierarchy(t *testing.T) {

	Convey("Given a store with a mock db pool", t, func() {

		boltConn := &bolttest.ConnMock{
			CloseFunc: func() error {
				return nil
			},
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, nil
			},
		}

		dbPool := &hierarchytest.DBPoolMock{
			OpenPoolFunc: func() (bolt.Conn, error) {
				return boltConn, nil
			},
		}

		store := NewStore(dbPool)

		Convey("When BuildHierarchy is called", func() {

			err := store.BuildHierarchy(instanceID, codeListID, dimensionName)

			Convey("Then the returned error should be nil", func() {
				So(err, ShouldBeNil)
			})

			Convey("Then the database connection pool should be called to get a connection", func() {
				So(len(dbPool.OpenPoolCalls()), ShouldEqual, 1)
			})

			Convey("Then the database connection should be called a number of times", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 8)
			})

			Convey("Then the database connection should be closed", func() {
				So(len(boltConn.CloseCalls()), ShouldEqual, 1)
			})
		})
	})
}

func TestStore_BuildHierarchy_OpenPoolErr(t *testing.T) {

	Convey("Given a store with a mock db pool that returns an error", t, func() {

		dbPool := &hierarchytest.DBPoolMock{
			OpenPoolFunc: func() (bolt.Conn, error) {
				return nil, dbPoolErr
			},
		}

		store := NewStore(dbPool)

		Convey("When BuildHierarchy is called", func() {

			err := store.BuildHierarchy(instanceID, codeListID, dimensionName)

			Convey("Then the database connection pool should be called to get a connection", func() {
				So(len(dbPool.OpenPoolCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from dbPool.OpenPoolFunc", func() {
				So(err, ShouldEqual, dbPoolErr)
			})
		})
	})
}

func TestStore_BuildHierarchy_NeoExecErr(t *testing.T) {

	Convey("Given a store with a mock connection that returns an error", t, func() {

		boltConn := &bolttest.ConnMock{
			CloseFunc: func() error {
				return nil
			},
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, execErr
			},
		}

		dbPool := &hierarchytest.DBPoolMock{
			OpenPoolFunc: func() (bolt.Conn, error) {
				return boltConn, nil
			},
		}

		store := NewStore(dbPool)

		Convey("When BuildHierarchy is called", func() {

			err := store.BuildHierarchy(instanceID, codeListID, dimensionName)

			Convey("Then the returned error should be that returned from connection.execNeo", func() {
				So(err, ShouldEqual, execErr)
			})

			Convey("Then the database connection pool should be called to get a connection", func() {
				So(len(dbPool.OpenPoolCalls()), ShouldEqual, 1)
			})

			Convey("Then the database connection should be called a number of times", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})
		})
	})
}

func TestStore_createInstanceHierarchyConstraints(t *testing.T) {

	expectedQuery := fmt.Sprintf(
		"CREATE CONSTRAINT ON (n:`_hierarchy_node_%s_%s`) ASSERT n.code IS UNIQUE;",
		instanceID,
		dimensionName,
	)

	Convey("Given a mock bolt connection", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, nil
			},
		}

		Convey("When createInstanceHierarchyConstraints is called", func() {

			err := createInstanceHierarchyConstraints(boltConn, instanceID, dimensionName)

			Convey("Then the returned error should be nil", func() {
				So(err, ShouldBeNil)
			})

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
				So(boltConn.ExecNeoCalls()[0].Query, ShouldEqual, expectedQuery)
			})
		})
	})
}

func TestStore_createInstanceHierarchyConstraints_NeoExecErr(t *testing.T) {

	Convey("Given a mock bolt connection that returns an error", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, execErr
			},
		}

		Convey("When createInstanceHierarchyConstraints is called", func() {

			err := createInstanceHierarchyConstraints(boltConn, instanceID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}

func TestStore_cloneNodes(t *testing.T) {

	expectedQuery := fmt.Sprintf(
		"MATCH (n:`_generic_hierarchy_node_%s`) WITH n "+
			"MERGE (:`_hierarchy_node_%s_%s` { code:n.code,label:n.label,code_list:{code_list}, hasData:false });",
		codeListID,
		instanceID,
		dimensionName,
	)

	Convey("Given a mock bolt connection", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, nil
			},
		}

		Convey("When cloneNodes is called", func() {

			err := cloneNodes(boltConn, instanceID, codeListID, dimensionName)

			Convey("Then the returned error should be nil", func() {
				So(err, ShouldBeNil)
			})

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
				So(boltConn.ExecNeoCalls()[0].Query, ShouldEqual, expectedQuery)
			})
		})
	})
}

func TestStore_cloneNodes_NeoExecErr(t *testing.T) {

	Convey("Given a mock bolt connection that returns an error", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, execErr
			},
		}

		Convey("When cloneNodes is called", func() {

			err := cloneNodes(boltConn, instanceID, codeListID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}

func TestStore_cloneRelationships(t *testing.T) {

	expectedQuery := fmt.Sprintf(
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

	Convey("Given a mock bolt connection", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, nil
			},
		}

		Convey("When cloneRelationships is called", func() {

			err := cloneRelationships(boltConn, instanceID, codeListID, dimensionName)

			Convey("Then the returned error should be nil", func() {
				So(err, ShouldBeNil)
			})

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
				So(boltConn.ExecNeoCalls()[0].Query, ShouldEqual, expectedQuery)
			})
		})
	})
}

func TestStore_cloneRelationships_NeoExecErr(t *testing.T) {

	Convey("Given a mock bolt connection that returns an error", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, execErr
			},
		}

		Convey("When cloneRelationships is called", func() {

			err := cloneRelationships(boltConn, instanceID, codeListID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}

func TestStore_setNumberOfChildren(t *testing.T) {

	expectedQuery := fmt.Sprintf(
		"MATCH (n:`_hierarchy_node_%s_%s`)"+
			" with n SET n.numberOfChildren = size((n)<-[:hasParent]-(:`_hierarchy_node_%s_%s`))",
		instanceID,
		dimensionName,
		instanceID,
		dimensionName,
	)

	Convey("Given a mock bolt connection", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, nil
			},
		}

		Convey("When setNumberOfChildren is called", func() {

			err := setNumberOfChildren(boltConn, instanceID, dimensionName)

			Convey("Then the returned error should be nil", func() {
				So(err, ShouldBeNil)
			})

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
				So(boltConn.ExecNeoCalls()[0].Query, ShouldEqual, expectedQuery)
			})
		})
	})
}

func TestStore_setNumberOfChildren_NeoExecErr(t *testing.T) {

	Convey("Given a mock bolt connection that returns an error", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, execErr
			},
		}

		Convey("When setNumberOfChildren is called", func() {

			err := setNumberOfChildren(boltConn, instanceID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}

func TestStore_setHasData(t *testing.T) {

	expectedQuery := fmt.Sprintf("MATCH (n:`_hierarchy_node_%s_%s`), (p:`_%s_%s`) "+
		"WHERE n.code = p.value SET n.hasData=true",
		instanceID,
		dimensionName,
		instanceID,
		dimensionName,
	)

	Convey("Given a mock bolt connection", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, nil
			},
		}

		Convey("When setHasData is called", func() {

			err := setHasData(boltConn, instanceID, dimensionName)

			Convey("Then the returned error should be nil", func() {
				So(err, ShouldBeNil)
			})

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
				So(boltConn.ExecNeoCalls()[0].Query, ShouldEqual, expectedQuery)
			})
		})
	})
}

func TestStore_setHasData_NeoExecErr(t *testing.T) {

	Convey("Given a mock bolt connection that returns an error", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, execErr
			},
		}

		Convey("When setHasData is called", func() {

			err := setHasData(boltConn, instanceID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}

func TestStore_markNodesToRemain(t *testing.T) {

	expectedQuery := fmt.Sprintf("MATCH (parent:`_hierarchy_node_%s_%s`)<-[:hasParent*]-(child:`_hierarchy_node_%s_%s`) "+
		"WHERE child.hasData=true set parent.remain=true set child.remain=true",
		instanceID,
		dimensionName,
		instanceID,
		dimensionName,
	)

	Convey("Given a mock bolt connection", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, nil
			},
		}

		Convey("When markNodesToRemain is called", func() {

			err := markNodesToRemain(boltConn, instanceID, dimensionName)

			Convey("Then the returned error should be nil", func() {
				So(err, ShouldBeNil)
			})

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
				So(boltConn.ExecNeoCalls()[0].Query, ShouldEqual, expectedQuery)
			})
		})
	})
}

func TestStore_markNodesToRemain_NeoExecErr(t *testing.T) {

	Convey("Given a mock bolt connection that returns an error", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, execErr
			},
		}

		Convey("When markNodesToRemain is called", func() {

			err := markNodesToRemain(boltConn, instanceID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}

func TestStore_removeNodesNotMarkedToRemain(t *testing.T) {

	expectedQuery := fmt.Sprintf("MATCH (node:`_hierarchy_node_%s_%s`) WHERE NOT EXISTS(node.remain) DETACH DELETE node",
		instanceID,
		dimensionName,
	)

	Convey("Given a mock bolt connection", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, nil
			},
		}

		Convey("When removeNodesNotMarkedToRemain is called", func() {

			err := removeNodesNotMarkedToRemain(boltConn, instanceID, dimensionName)

			Convey("Then the returned error should be nil", func() {
				So(err, ShouldBeNil)
			})

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
				So(boltConn.ExecNeoCalls()[0].Query, ShouldEqual, expectedQuery)
			})
		})
	})
}

func TestStore_removeNodesNotMarkedToRemain_NeoExecErr(t *testing.T) {

	Convey("Given a mock bolt connection that returns an error", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, execErr
			},
		}

		Convey("When removeNodesNotMarkedToRemain is called", func() {

			err := removeNodesNotMarkedToRemain(boltConn, instanceID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}

func TestStore_removeRemainMarker(t *testing.T) {

	expectedQuery := fmt.Sprintf("MATCH (node:`_hierarchy_node_%s_%s`) REMOVE node.remain",
		instanceID,
		dimensionName,
	)

	Convey("Given a mock bolt connection", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, nil
			},
		}

		Convey("When removeRemainMarker is called", func() {

			err := removeRemainMarker(boltConn, instanceID, dimensionName)

			Convey("Then the returned error should be nil", func() {
				So(err, ShouldBeNil)
			})

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
				So(boltConn.ExecNeoCalls()[0].Query, ShouldEqual, expectedQuery)
			})
		})
	})
}

func TestStore_removeRemainMarker_NeoExecErr(t *testing.T) {

	Convey("Given a mock bolt connection that returns an error", t, func() {

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (golangNeo4jBoltDriver.Result, error) {
				return nil, execErr
			},
		}

		Convey("When removeRemainMarker is called", func() {

			err := removeRemainMarker(boltConn, instanceID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}
