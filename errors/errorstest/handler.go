// Code generated by moq; DO NOT EDIT
// github.com/matryer/moq

package errorstest

import (
	"sync"
)

var (
	lockHandlerMockHandle sync.RWMutex
)

// HandlerMock is a mock implementation of Handler.
//
//     func TestSomethingThatUsesHandler(t *testing.T) {
//
//         // make and configure a mocked Handler
//         mockedHandler := &HandlerMock{
//             HandleFunc: func(importID string, err error)  {
// 	               panic("TODO: mock out the Handle method")
//             },
//         }
//
//         // TODO: use mockedHandler in code that requires Handler
//         //       and then make assertions.
//
//     }
type HandlerMock struct {
	// HandleFunc mocks the Handle method.
	HandleFunc func(importID string, err error)

	// calls tracks calls to the methods.
	calls struct {
		// Handle holds details about calls to the Handle method.
		Handle []struct {
			// ImportID is the importID argument value.
			ImportID string
			// Err is the err argument value.
			Err error
		}
	}
}

// Handle calls HandleFunc.
func (mock *HandlerMock) Handle(importID string, err error) {
	if mock.HandleFunc == nil {
		panic("moq: HandlerMock.HandleFunc is nil but Handler.Handle was just called")
	}
	callInfo := struct {
		ImportID string
		Err      error
	}{
		ImportID: importID,
		Err:      err,
	}
	lockHandlerMockHandle.Lock()
	mock.calls.Handle = append(mock.calls.Handle, callInfo)
	lockHandlerMockHandle.Unlock()
	mock.HandleFunc(importID, err)
}

// HandleCalls gets all the calls that were made to Handle.
// Check the length with:
//     len(mockedHandler.HandleCalls())
func (mock *HandlerMock) HandleCalls() []struct {
	ImportID string
	Err      error
} {
	var calls []struct {
		ImportID string
		Err      error
	}
	lockHandlerMockHandle.RLock()
	calls = mock.calls.Handle
	lockHandlerMockHandle.RUnlock()
	return calls
}
