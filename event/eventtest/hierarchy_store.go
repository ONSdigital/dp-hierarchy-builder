// Code generated by moq; DO NOT EDIT.
// github.com/matryer/moq

package eventtest

import (
	"github.com/ONSdigital/dp-hierarchy-builder/event"
	"sync"
)

var (
	lockHierarchyStoreMockBuildHierarchy sync.RWMutex
)

// Ensure, that HierarchyStoreMock does implement event.HierarchyStore.
// If this is not the case, regenerate this file with moq.
var _ event.HierarchyStore = &HierarchyStoreMock{}

// HierarchyStoreMock is a mock implementation of event.HierarchyStore.
//
//     func TestSomethingThatUsesHierarchyStore(t *testing.T) {
//
//         // make and configure a mocked event.HierarchyStore
//         mockedHierarchyStore := &HierarchyStoreMock{
//             BuildHierarchyFunc: func(instanceID string, codeListID string, dimensionName string) error {
// 	               panic("mock out the BuildHierarchy method")
//             },
//         }
//
//         // use mockedHierarchyStore in code that requires event.HierarchyStore
//         // and then make assertions.
//
//     }
type HierarchyStoreMock struct {
	// BuildHierarchyFunc mocks the BuildHierarchy method.
	BuildHierarchyFunc func(instanceID string, codeListID string, dimensionName string) error

	// calls tracks calls to the methods.
	calls struct {
		// BuildHierarchy holds details about calls to the BuildHierarchy method.
		BuildHierarchy []struct {
			// InstanceID is the instanceID argument value.
			InstanceID string
			// CodeListID is the codeListID argument value.
			CodeListID string
			// DimensionName is the dimensionName argument value.
			DimensionName string
		}
	}
}

// BuildHierarchy calls BuildHierarchyFunc.
func (mock *HierarchyStoreMock) BuildHierarchy(instanceID string, codeListID string, dimensionName string) error {
	if mock.BuildHierarchyFunc == nil {
		panic("HierarchyStoreMock.BuildHierarchyFunc: method is nil but HierarchyStore.BuildHierarchy was just called")
	}
	callInfo := struct {
		InstanceID    string
		CodeListID    string
		DimensionName string
	}{
		InstanceID:    instanceID,
		CodeListID:    codeListID,
		DimensionName: dimensionName,
	}
	lockHierarchyStoreMockBuildHierarchy.Lock()
	mock.calls.BuildHierarchy = append(mock.calls.BuildHierarchy, callInfo)
	lockHierarchyStoreMockBuildHierarchy.Unlock()
	return mock.BuildHierarchyFunc(instanceID, codeListID, dimensionName)
}

// BuildHierarchyCalls gets all the calls that were made to BuildHierarchy.
// Check the length with:
//     len(mockedHierarchyStore.BuildHierarchyCalls())
func (mock *HierarchyStoreMock) BuildHierarchyCalls() []struct {
	InstanceID    string
	CodeListID    string
	DimensionName string
} {
	var calls []struct {
		InstanceID    string
		CodeListID    string
		DimensionName string
	}
	lockHierarchyStoreMockBuildHierarchy.RLock()
	calls = mock.calls.BuildHierarchy
	lockHierarchyStoreMockBuildHierarchy.RUnlock()
	return calls
}
