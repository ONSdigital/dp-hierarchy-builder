package driver

import (
	gremgo "github.com/gedge/gremgo-neptune"
)

/*
Interface NeptunePool defines the contract required of the gremgo 
connection Pool by the Neptune.Driver.
*/
type NeptunePool interface {

    Close()

    Execute(query string, bindings, rebindings map[string]string) (
        resp []gremgo.Response, err error)

    Get(query string, bindings, rebindings map[string]string) (
        resp interface{}, err error)

    GetCount(q string, bindings, rebindings map[string]string) (
        i int64, err error)

    GetE(q string, bindings, rebindings map[string]string) (
        resp interface{}, err error)
}
