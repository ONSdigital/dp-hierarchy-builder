// Code generated by moq; DO NOT EDIT.
// github.com/matryer/moq

package eventtest

import (
	"context"
	"github.com/ONSdigital/dp-hierarchy-builder/event"
	"sync"
)

var (
	lockEventProducerMockHierarchyBuilt sync.RWMutex
)

// Ensure, that EventProducerMock does implement event.EventProducer.
// If this is not the case, regenerate this file with moq.
var _ event.EventProducer = &EventProducerMock{}

// EventProducerMock is a mock implementation of event.EventProducer.
//
//     func TestSomethingThatUsesEventProducer(t *testing.T) {
//
//         // make and configure a mocked event.EventProducer
//         mockedEventProducer := &EventProducerMock{
//             HierarchyBuiltFunc: func(ctx context.Context, instanceID string, dimensionName string) error {
// 	               panic("mock out the HierarchyBuilt method")
//             },
//         }
//
//         // use mockedEventProducer in code that requires event.EventProducer
//         // and then make assertions.
//
//     }
type EventProducerMock struct {
	// HierarchyBuiltFunc mocks the HierarchyBuilt method.
	HierarchyBuiltFunc func(ctx context.Context, instanceID string, dimensionName string) error

	// calls tracks calls to the methods.
	calls struct {
		// HierarchyBuilt holds details about calls to the HierarchyBuilt method.
		HierarchyBuilt []struct {
			// Ctx is the ctx argument value.
			Ctx context.Context
			// InstanceID is the instanceID argument value.
			InstanceID string
			// DimensionName is the dimensionName argument value.
			DimensionName string
		}
	}
}

// HierarchyBuilt calls HierarchyBuiltFunc.
func (mock *EventProducerMock) HierarchyBuilt(ctx context.Context, instanceID string, dimensionName string) error {
	if mock.HierarchyBuiltFunc == nil {
		panic("EventProducerMock.HierarchyBuiltFunc: method is nil but EventProducer.HierarchyBuilt was just called")
	}
	callInfo := struct {
		Ctx           context.Context
		InstanceID    string
		DimensionName string
	}{
		Ctx:           ctx,
		InstanceID:    instanceID,
		DimensionName: dimensionName,
	}
	lockEventProducerMockHierarchyBuilt.Lock()
	mock.calls.HierarchyBuilt = append(mock.calls.HierarchyBuilt, callInfo)
	lockEventProducerMockHierarchyBuilt.Unlock()
	return mock.HierarchyBuiltFunc(ctx, instanceID, dimensionName)
}

// HierarchyBuiltCalls gets all the calls that were made to HierarchyBuilt.
// Check the length with:
//     len(mockedEventProducer.HierarchyBuiltCalls())
func (mock *EventProducerMock) HierarchyBuiltCalls() []struct {
	Ctx           context.Context
	InstanceID    string
	DimensionName string
} {
	var calls []struct {
		Ctx           context.Context
		InstanceID    string
		DimensionName string
	}
	lockEventProducerMockHierarchyBuilt.RLock()
	calls = mock.calls.HierarchyBuilt
	lockEventProducerMockHierarchyBuilt.RUnlock()
	return calls
}
