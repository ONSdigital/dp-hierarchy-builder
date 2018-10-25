package hierarchy

import (
	"errors"
	"fmt"
	"testing"

	"github.com/ONSdigital/dp-hierarchy-builder/bolt/bolttest"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy/hierarchytest"
	bolt "github.com/johnnadratowski/golang-neo4j-bolt-driver"
	neoErrors "github.com/johnnadratowski/golang-neo4j-bolt-driver/errors"
	"github.com/johnnadratowski/golang-neo4j-bolt-driver/structures/messages"
	. "github.com/smartystreets/goconvey/convey"
)

const (
	instanceID    = "123"
	codeListID    = "312"
	dimensionName = "age"
)

var (
	dbPoolErr    = errors.New("the db pool is broken")
	execErr      = errors.New("failed to execute query")
	transientErr = errors.New(transientErrorPrefix)
)

type boltResultMock struct{}

func (b boltResultMock) RowsAffected() (int64, error)     { return 1, nil }
func (b boltResultMock) LastInsertId() (int64, error)     { return 2, nil }
func (b boltResultMock) Metadata() map[string]interface{} { return nil }

type boltResultQueryMock struct{}

func (b boltResultQueryMock) All() ([][]interface{}, map[string]interface{}, error) {
	return [][]interface{}{[]interface{}{int64(1)}}, nil, nil
}
func (b boltResultQueryMock) Close() error      { return nil }
func (b boltResultQueryMock) Columns() []string { return nil }
func (b boltResultQueryMock) NextNeo() ([]interface{}, map[string]interface{}, error) {
	return nil, nil, nil
}
func (b boltResultQueryMock) Metadata() map[string]interface{} { return nil }

var resMock = boltResultMock{}
var resQueryMock = boltResultQueryMock{}

func TestStore_BuildHierarchy(t *testing.T) {

	Convey("Given a store with a mock db pool", t, func() {

		boltConn := &bolttest.ConnMock{
			CloseFunc: func() error {
				return nil
			},
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return resMock, nil
			},
			QueryNeoFunc: func(query string, params map[string]interface{}) (bolt.Rows, error) {
				return resQueryMock, nil
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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, nil
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When createInstanceHierarchyConstraints is called", func() {

			err := db.createInstanceHierarchyConstraints(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, execErr
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When createInstanceHierarchyConstraints is called", func() {

			err := db.createInstanceHierarchyConstraints(1, instanceID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}

func TestStore_createInstanceHierarchyConstraints_NeoExecRetry(t *testing.T) {

	Convey("Given a mock bolt connection that returns an error", t, func() {
		transientNeoErr := neoErrors.Wrap(messages.FailureMessage{Metadata: map[string]interface{}{"code": "Neo.TransientError.Transaction.ConstraintsChanged"}}, "constraint error msg")

		boltConn := &bolttest.ConnMock{
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, transientNeoErr
			},
		}

		db := &database{
			maxRetries: 5,
			conn:       boltConn,
		}

		Convey("When createInstanceHierarchyConstraints is called", func() {

			err := db.createInstanceHierarchyConstraints(1, instanceID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 5)
			})

			Convey("Then the returned error should wrap that returned from the exec call", func() {
				So(err, ShouldResemble, ErrAttemptsExceededLimit{transientNeoErr})
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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return resMock, nil
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When cloneNodes is called", func() {

			err := db.cloneNodes(1, instanceID, codeListID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, execErr
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When cloneNodes is called", func() {

			err := db.cloneNodes(1, instanceID, codeListID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, nil
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When cloneRelationships is called", func() {

			err := db.cloneRelationships(1, instanceID, codeListID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, execErr
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When cloneRelationships is called", func() {

			err := db.cloneRelationships(1, instanceID, codeListID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, nil
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When setNumberOfChildren is called", func() {

			err := db.setNumberOfChildren(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, execErr
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When setNumberOfChildren is called", func() {

			err := db.setNumberOfChildren(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, nil
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When setHasData is called", func() {

			err := db.setHasData(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, execErr
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When setHasData is called", func() {

			err := db.setHasData(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, nil
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When markNodesToRemain is called", func() {

			err := db.markNodesToRemain(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, execErr
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When markNodesToRemain is called", func() {

			err := db.markNodesToRemain(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, nil
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When removeNodesNotMarkedToRemain is called", func() {

			err := db.removeNodesNotMarkedToRemain(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, execErr
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When removeNodesNotMarkedToRemain is called", func() {

			err := db.removeNodesNotMarkedToRemain(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, nil
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When removeRemainMarker is called", func() {

			err := db.removeRemainMarker(1, instanceID, dimensionName)

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
			ExecNeoFunc: func(query string, params map[string]interface{}) (bolt.Result, error) {
				return nil, execErr
			},
		}

		db := &database{
			maxRetries: 1,
			conn:       boltConn,
		}

		Convey("When removeRemainMarker is called", func() {

			err := db.removeRemainMarker(1, instanceID, dimensionName)

			Convey("Then boltConn.ExecNeo should be called once for the expected query", func() {
				So(len(boltConn.ExecNeoCalls()), ShouldEqual, 1)
			})

			Convey("Then the returned error should be that returned from the exec call", func() {
				So(err, ShouldEqual, execErr)
			})
		})
	})
}
