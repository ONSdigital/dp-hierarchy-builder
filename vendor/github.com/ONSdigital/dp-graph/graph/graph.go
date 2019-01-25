package graph

import (
	"context"
	"errors"

	"github.com/ONSdigital/dp-graph/config"
	"github.com/ONSdigital/dp-graph/graph/driver"
	"github.com/ONSdigital/dp-graph/mock"
)

type DB struct {
	driver.Driver
	driver.CodeList
	driver.Hierarchy
	driver.Instance
}

type Subsets struct {
	CodeList  bool
	Hierarchy bool
	Instance  bool
}

func NewCodeListStore(ctx context.Context) (*DB, error) {
	return New(ctx, Subsets{CodeList: true})
}

func NewHierarchyStore(ctx context.Context) (*DB, error) {
	return New(ctx, Subsets{Hierarchy: true})
}

func New(ctx context.Context, choice Subsets) (*DB, error) {
	cfg, err := config.Get()
	if err != nil {
		return nil, err
	}

	var ok bool
	var h driver.Hierarchy
	if h, ok = cfg.Driver.(driver.Hierarchy); !ok {
		if choice.Hierarchy {
			return nil, errors.New("configured driver does not implement hierarchy subset")
		}
	}

	if !choice.Hierarchy {
		h = nil
	}

	var c driver.CodeList
	if c, ok = cfg.Driver.(driver.CodeList); !ok {
		if choice.CodeList {
			return nil, errors.New("configured driver does not implement code list subset")
		}
	}

	if !choice.CodeList {
		c = nil
	}

	var i driver.Instance
	if i, ok = cfg.Driver.(driver.Instance); !ok {
		if choice.Instance {
			return nil, errors.New("configured driver does not implement instance subset")
		}
	}

	if !choice.Instance {
		i = nil
	}

	return &DB{
		cfg.Driver,
		c,
		h,
		i,
	}, nil
}

//Test sets flags for managing responses from the Mock driver
func Test(backend, query, content bool) *mock.Mock {
	return &mock.Mock{
		IsBackendReachable: backend,
		IsQueryValid:       query,
		IsContentFound:     content,
	}
}
