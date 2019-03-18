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

func NewInstanceStore(ctx context.Context) (*DB, error) {
	return New(ctx, Subsets{Instance: true})
}

func New(ctx context.Context, choice Subsets) (*DB, error) {
	cfg, err := config.Get()
	if err != nil {
		return nil, err
	}

	var ok bool
	var h driver.Hierarchy
	if choice.Hierarchy {
		if h, ok = cfg.Driver.(driver.Hierarchy); !ok {
			return nil, errors.New("configured driver does not implement hierarchy subset")
		}
	}

	var c driver.CodeList
	if choice.CodeList {
		if c, ok = cfg.Driver.(driver.CodeList); !ok {
			return nil, errors.New("configured driver does not implement code list subset")
		}
	}

	var i driver.Instance
	if choice.Instance {
		if i, ok = cfg.Driver.(driver.Instance); !ok {
			return nil, errors.New("configured driver does not implement instance subset")
		}
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
