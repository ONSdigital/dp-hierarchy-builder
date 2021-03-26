package hierarchy_test

import (
	"context"
	"errors"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy/hierarchytest"
	"testing"

	. "github.com/smartystreets/goconvey/convey"
)

func TestStore_BuildHierarchy(t *testing.T) {

	instanceID := "123"
	codeListID := "aggr123"
	dimensionName := "aggregate"

	Convey("Given a mock database that returns true for HierarchyExists", t, func() {

		mockDB := &hierarchytest.DBMock{
			HierarchyExistsFunc: func(ctx context.Context, instanceID string, dimension string) (bool, error) {
				return true, nil
			},
		}
		store := &hierarchy.Store{DB: mockDB}

		Convey("When BuildHierarchy is called", func() {

			err := store.BuildHierarchy(instanceID, codeListID, dimensionName)

			Convey("Then the HierarchyExists function is called with the expected parameters", func() {
				So(len(mockDB.HierarchyExistsCalls()), ShouldEqual, 1)
				So(mockDB.HierarchyExistsCalls()[0].InstanceID, ShouldEqual, instanceID)
				So(mockDB.HierarchyExistsCalls()[0].Dimension, ShouldEqual, dimensionName)
			})

			Convey("Then the expected error is returned", func() {
				So(err, ShouldEqual, hierarchy.AlreadyExistsErr)
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

			err := store.BuildHierarchy(instanceID, codeListID, dimensionName)

			Convey("Then the HierarchyExists function is called with the expected parameters", func() {
				So(len(mockDB.HierarchyExistsCalls()), ShouldEqual, 1)
				So(mockDB.HierarchyExistsCalls()[0].InstanceID, ShouldEqual, instanceID)
				So(mockDB.HierarchyExistsCalls()[0].Dimension, ShouldEqual, dimensionName)
			})

			Convey("Then the expected error is returned", func() {
				So(err, ShouldEqual, expectedError)
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
		}

		store := &hierarchy.Store{DB: mockDB}

		Convey("When BuildHierarchy is called", func() {

			err := store.BuildHierarchy(instanceID, codeListID, dimensionName)

			Convey("Then the HierarchyExists function is called with the expected parameters", func() {
				calls := mockDB.HierarchyExistsCalls()
				So(len(calls), ShouldEqual, 1)
				So(calls[0].InstanceID, ShouldEqual, instanceID)
				So(calls[0].Dimension, ShouldEqual, dimensionName)
			})

			Convey("Then the CreateInstanceHierarchyConstraints function is called with the expected parameters", func() {
				calls := mockDB.CreateInstanceHierarchyConstraintsCalls()
				So(len(calls), ShouldEqual, 1)
				So(calls[0].InstanceID, ShouldEqual, instanceID)
				So(calls[0].DimensionName, ShouldEqual, dimensionName)
			})

			Convey("Then the expected error is returned", func() {
				So(err, ShouldEqual, expectedError)
			})
		})
	})
}
