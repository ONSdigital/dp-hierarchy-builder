package driver

import (
	"context"
	"errors"

	"github.com/ONSdigital/dp-code-list-api/models"
)

var ErrNotFound = errors.New("not found")

type Driver interface {
	Close(ctx context.Context) error
}

type CodeList interface {
	GetCodeLists(ctx context.Context, filterBy string) (*models.CodeListResults, error)
	GetCodeList(ctx context.Context, codeListID string) (*models.CodeList, error)
	GetEditions(ctx context.Context, codeListID string) (*models.Editions, error)
	GetEdition(ctx context.Context, codeListID, edition string) (*models.Edition, error)
	GetCodes(ctx context.Context, codeListID, edition string) (*models.CodeResults, error)
	GetCode(ctx context.Context, codeListID, edition string, code string) (*models.Code, error)
	GetCodeDatasets(ctx context.Context, codeListID, edition string, code string) (*models.Datasets, error)
}

type Hierarchy interface {
	CreateInstanceHierarchyConstraints(ctx context.Context, attempt int, instanceID, dimensionName string) error
	CloneNodes(ctx context.Context, attempt int, instanceID, codeListID, dimensionName string) error
	CountNodes(ctx context.Context, instanceID, dimensionName string) (count int64, err error)
	CloneRelationships(ctx context.Context, attempt int, instanceID, codeListID, dimensionName string) error
	SetNumberOfChildren(ctx context.Context, attempt int, instanceID, dimensionName string) error
	SetHasData(ctx context.Context, attempt int, instanceID, dimensionName string) error
	MarkNodesToRemain(ctx context.Context, attempt int, instanceID, dimensionName string) error
	RemoveNodesNotMarkedToRemain(ctx context.Context, attempt int, instanceID, dimensionName string) error
	RemoveRemainMarker(ctx context.Context, attempt int, instanceID, dimensionName string) error

	//would this work for the majority of these? is there a retry wrapper we can implement? does it work better from the exec level?
	//	Retry(ctx context.Context, attempt int, call func(ctx context.Context, instanceID, dimensionName string) error)
}

type Instance interface {
	CountInsertedObservations(ctx context.Context, instanceID string) (count int64, err error)
}
