package hierarchy_test

import (
	"context"
	"errors"
	"testing"

	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy/hierarchytest"

	. "github.com/smartystreets/goconvey/convey"
)

var (
	testInstanceID        = "123"
	testCodeListID        = "aggr123"
	testDimensionName     = "aggregate"
	testCodes             = []string{"code1", "code2", "code3"}
	testGenericNodeIDsMap = map[string]string{
		"node1": "code1",
		"node2": "code2",
		"node3": "code3",
	}
	testGenericAncestriesIDsMap = map[string]string{
		"node1": "code1",
		"node4": "code4",
		"node5": "code5",
	}
	testCreatedNodeIds = map[string]string{
		"newNode1": "",
		"newNode2": "",
		"newNode3": "",
		"newNode4": "",
		"newNode5": "",
	}
)

func TestStore_BuildHierarchy(t *testing.T) {

	Convey("Given a mock database that returns true for HierarchyExists", t, func() {

		mockDB := &hierarchytest.DBMock{
			HierarchyExistsFunc: func(ctx context.Context, instanceID string, dimension string) (bool, error) {
				return true, nil
			},
		}
		store := &hierarchy.Store{DB: mockDB}

		Convey("When BuildHierarchy is called", func() {

			err := store.BuildHierarchy(testInstanceID, testCodeListID, testDimensionName)

			Convey("Then the HierarchyExists function is called with the expected parameters", func() {
				So(mockDB.HierarchyExistsCalls(), ShouldHaveLength, 1)
				So(mockDB.HierarchyExistsCalls()[0].InstanceID, ShouldEqual, testInstanceID)
				So(mockDB.HierarchyExistsCalls()[0].Dimension, ShouldEqual, testDimensionName)
			})

			Convey("Then the expected error is returned", func() {
				So(err, ShouldEqual, hierarchy.ErrAlreadyExists)
			})
		})
	})

	Convey("Given a mock database that returns an error for HierarchyExists", t, func() {

		expectedError := errors.New("failed")
		mockDB := &hierarchytest.DBMock{
			HierarchyExistsFunc: func(ctx context.Context, instanceID string, dimension string) (bool, error) {
				return false, expectedError
			},
		}
		store := &hierarchy.Store{DB: mockDB}

		Convey("When BuildHierarchy is called", func() {

			err := store.BuildHierarchy(testInstanceID, testCodeListID, testDimensionName)

			Convey("Then the HierarchyExists function is called with the expected parameters", func() {
				So(mockDB.HierarchyExistsCalls(), ShouldHaveLength, 1)
				So(mockDB.HierarchyExistsCalls()[0].InstanceID, ShouldEqual, testInstanceID)
				So(mockDB.HierarchyExistsCalls()[0].Dimension, ShouldEqual, testDimensionName)
			})

			Convey("Then the expected error is returned", func() {
				So(err, ShouldEqual, expectedError)
			})
		})
	})

	Convey("Given a fully working mock database and a hierarchy that does not exist", t, func() {
		mockDB := &hierarchytest.DBMock{
			HierarchyExistsFunc: func(ctx context.Context, instanceID string, dimension string) (bool, error) {
				return false, nil
			},
			CreateInstanceHierarchyConstraintsFunc: func(ctx context.Context, attempt int, instanceID string, dimensionName string) error {
				return nil
			},
			GetCodesWithDataFunc: func(ctx context.Context, attempt int, instanceID string, dimensionName string) ([]string, error) {
				return testCodes, nil
			},
			GetGenericHierarchyNodeIDsFunc: func(ctx context.Context, attempt int, codeListID string, codes []string) (map[string]string, error) {
				return testGenericNodeIDsMap, nil

			},
			GetGenericHierarchyAncestriesIDsFunc: func(ctx context.Context, attempt int, codeListID string, codes []string) (map[string]string, error) {
				return testGenericAncestriesIDsMap, nil
			},
			CreateHasCodeEdgesFunc: func(ctx context.Context, attempt int, codeListID string, codesById map[string]string) error {
				return nil
			},
			CloneNodesFromIDsFunc: func(ctx context.Context, attempt int, instanceID string, codeListID string, dimensionName string, ids map[string]string, hasData bool) error {
				return nil
			},
			CountNodesFunc: func(ctx context.Context, instanceID string, dimensionName string) (int64, error) {
				return 5, nil
			},
			CloneOrderFromIDsFunc: func(ctx context.Context, codeListID string, ids map[string]string) error {
				return nil
			},
			CloneRelationshipsFromIDsFunc: func(ctx context.Context, attempt int, instanceID string, dimensionName string, ids map[string]string) error {
				return nil
			},
			GetHierarchyNodeIDsFunc: func(ctx context.Context, attempt int, instanceID string, dimensionName string) (map[string]string, error) {
				return testCreatedNodeIds, nil
			},
			RemoveCloneEdgesFromSourceIDsFunc: func(ctx context.Context, attempt int, ids map[string]string) error {
				return nil
			},
			SetNumberOfChildrenFromIDsFunc: func(ctx context.Context, attempt int, ids map[string]string) error {
				return nil
			},
		}

		store := &hierarchy.Store{DB: mockDB}

		Convey("When BuildHierarchy is called", func() {

			err := store.BuildHierarchy(testInstanceID, testCodeListID, testDimensionName)

			Convey("Then the HierarchyExists function is called with the expected parameters", func() {
				calls := mockDB.HierarchyExistsCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].InstanceID, ShouldEqual, testInstanceID)
				So(calls[0].Dimension, ShouldEqual, testDimensionName)
			})

			Convey("Then CreateInstanceHierarchyConstraints is called with the expected paramters", func() {
				calls := mockDB.CreateInstanceHierarchyConstraintsCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].InstanceID, ShouldEqual, testInstanceID)
				So(calls[0].DimensionName, ShouldEqual, testDimensionName)
			})

			Convey("Then GetCodesWithData is called with the expected paramters", func() {
				calls := mockDB.GetCodesWithDataCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].InstanceID, ShouldEqual, testInstanceID)
				So(calls[0].DimensionName, ShouldEqual, testDimensionName)
			})

			Convey("Then GetGenericHierarchyNodeIDs is called with the expected paramters", func() {
				calls := mockDB.GetGenericHierarchyNodeIDsCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].CodeListID, ShouldEqual, testCodeListID)
				So(calls[0].Codes, ShouldResemble, testCodes)
			})

			Convey("Then GetGenericHierarchyAncestriesIDs is called with the expected paramters", func() {
				calls := mockDB.GetGenericHierarchyAncestriesIDsCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].CodeListID, ShouldEqual, testCodeListID)
				So(calls[0].Codes, ShouldResemble, testCodes)
			})

			Convey("Then CreateHasCodeEdges is called twice, without repeated items even if some nodes are associated to a requested code and an ancestry at the same time", func() {
				calls := mockDB.CreateHasCodeEdgesCalls()
				So(calls, ShouldHaveLength, 2)
				So(calls[0].CodeListID, ShouldEqual, testCodeListID)
				So(calls[0].CodesById, ShouldResemble, map[string]string{
					"node1": "code1",
					"node2": "code2",
					"node3": "code3",
				})
				So(calls[1].CodeListID, ShouldEqual, testCodeListID)
				So(calls[1].CodesById, ShouldResemble, map[string]string{
					"node4": "code4",
					"node5": "code5",
				})
			})

			Convey("Then CloneNodesFromIDs is called twice, without repeated items even if some nodes are associated to a requested code and an ancestry at the same time", func() {
				calls := mockDB.CloneNodesFromIDsCalls()
				So(calls, ShouldHaveLength, 2)
				So(calls[0].InstanceID, ShouldEqual, testInstanceID)
				So(calls[0].CodeListID, ShouldEqual, testCodeListID)
				So(calls[0].DimensionName, ShouldEqual, testDimensionName)
				So(calls[0].Ids, ShouldResemble, map[string]string{
					"node1": "code1",
					"node2": "code2",
					"node3": "code3",
				})
				So(calls[0].HasData, ShouldBeTrue)

				So(calls[1].InstanceID, ShouldEqual, testInstanceID)
				So(calls[1].CodeListID, ShouldEqual, testCodeListID)
				So(calls[1].DimensionName, ShouldEqual, testDimensionName)
				So(calls[1].Ids, ShouldResemble, map[string]string{
					"node4": "code4",
					"node5": "code5",
				})
				So(calls[1].HasData, ShouldBeFalse)
			})

			Convey("Then CountNodes is called with the expected paramters", func() {
				calls := mockDB.CountNodesCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].InstanceID, ShouldEqual, testInstanceID)
				So(calls[0].DimensionName, ShouldEqual, testDimensionName)
			})

			Convey("Then CloneOrderFromIDs is called twice, without repeated items even if some nodes are associated to a requested code and an ancestry at the same time", func() {
				calls := mockDB.CloneOrderFromIDsCalls()
				So(calls, ShouldHaveLength, 2)
				So(calls[0].CodeListID, ShouldEqual, testCodeListID)
				So(calls[0].Ids, ShouldResemble, map[string]string{
					"node1": "code1",
					"node2": "code2",
					"node3": "code3",
				})

				So(calls[1].CodeListID, ShouldEqual, testCodeListID)
				So(calls[1].Ids, ShouldResemble, map[string]string{
					"node4": "code4",
					"node5": "code5",
				})
			})

			Convey("Then CloneRelationshipsFromIDs is called twice, without repeated items even if some nodes are associated to a requested code and an ancestry at the same time", func() {
				calls := mockDB.CloneRelationshipsFromIDsCalls()
				So(calls, ShouldHaveLength, 2)
				So(calls[0].InstanceID, ShouldEqual, testInstanceID)
				So(calls[0].DimensionName, ShouldEqual, testDimensionName)
				So(calls[0].Ids, ShouldResemble, map[string]string{
					"node1": "code1",
					"node2": "code2",
					"node3": "code3",
				})

				So(calls[1].InstanceID, ShouldEqual, testInstanceID)
				So(calls[1].DimensionName, ShouldEqual, testDimensionName)
				So(calls[1].Ids, ShouldResemble, map[string]string{
					"node4": "code4",
					"node5": "code5",
				})
			})

			Convey("Then GetHierarchyNodeIDs is called with the expected paramters", func() {
				calls := mockDB.GetHierarchyNodeIDsCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].InstanceID, ShouldEqual, testInstanceID)
				So(calls[0].DimensionName, ShouldEqual, testDimensionName)
			})

			Convey("The RemoveCloneEdgesFromSourceIDs is called with the newly created IDs", func() {
				calls := mockDB.RemoveCloneEdgesFromSourceIDsCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].Ids, ShouldResemble, testCreatedNodeIds)
			})

			Convey("The SetNumberOfChildrenFromIDs is called with the newly created IDs", func() {
				calls := mockDB.SetNumberOfChildrenFromIDsCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].Ids, ShouldResemble, testCreatedNodeIds)
			})

			Convey("Then the expected error is returned", func() {
				So(err, ShouldBeNil)
			})
		})
	})

	Convey("Given a mock database that returns an error for CreateInstanceHierarchyConstraints", t, func() {

		expectedError := errors.New("failed")
		mockDB := &hierarchytest.DBMock{
			HierarchyExistsFunc: func(ctx context.Context, instanceID string, dimension string) (bool, error) {
				return false, nil
			},
			CreateInstanceHierarchyConstraintsFunc: func(ctx context.Context, attempt int, instanceID string, dimensionName string) error {
				return expectedError
			},
			GetGenericHierarchyNodeIDsFunc: func(ctx context.Context, attempt int, codeListID string, codes []string) (map[string]string, error) {
				return testGenericNodeIDsMap, nil
			},
			GetGenericHierarchyAncestriesIDsFunc: func(ctx context.Context, attempt int, codeListID string, codes []string) (map[string]string, error) {
				return testGenericAncestriesIDsMap, nil
			},
		}

		store := &hierarchy.Store{DB: mockDB}

		Convey("When BuildHierarchy is called", func() {

			err := store.BuildHierarchy(testInstanceID, testCodeListID, testDimensionName)

			Convey("Then the HierarchyExists function is called with the expected parameters", func() {
				calls := mockDB.HierarchyExistsCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].InstanceID, ShouldEqual, testInstanceID)
				So(calls[0].Dimension, ShouldEqual, testDimensionName)
			})

			Convey("Then the CreateInstanceHierarchyConstraints function is called with the expected parameters", func() {
				calls := mockDB.CreateInstanceHierarchyConstraintsCalls()
				So(calls, ShouldHaveLength, 1)
				So(calls[0].InstanceID, ShouldEqual, testInstanceID)
				So(calls[0].DimensionName, ShouldEqual, testDimensionName)
			})

			Convey("Then the expected error is returned", func() {
				So(err, ShouldEqual, expectedError)
			})
		})
	})
}
