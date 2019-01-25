package mock

import (
	"context"
	"errors"

	"github.com/ONSdigital/dp-code-list-api/models"
)

func (m *Mock) GetCodeLists(ctx context.Context, filterBy string) (*models.CodeListResults, error) {
	if m.IsBackendReachable != true {
		return nil, errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return nil, errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return nil, errors.New("not found - 404")
	}

	return &models.CodeListResults{
		Count:      3,
		Offset:     0,
		Limit:      3,
		TotalCount: 3,
		Items: []models.CodeList{
			{
				Links: &models.CodeListLink{
					Self: &models.Link{
						ID: "code-list-1",
					},
				},
			},
			{
				Links: &models.CodeListLink{
					Self: &models.Link{
						ID: "code-list-2",
					},
				},
			},
			{
				Links: &models.CodeListLink{
					Self: &models.Link{
						ID: "code-list-3",
					},
				},
			},
		},
	}, nil
}

func (m *Mock) GetCodeList(ctx context.Context, codeListID string) (*models.CodeList, error) {
	if m.IsBackendReachable != true {
		return nil, errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return nil, errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return nil, errors.New("not found - 404")
	}

	return &models.CodeList{
		Links: &models.CodeListLink{
			Self: &models.Link{
				ID: codeListID,
			},
		},
	}, nil
}

func (m *Mock) GetEditions(ctx context.Context, codeListID string) (*models.Editions, error) {
	if m.IsBackendReachable != true {
		return nil, errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return nil, errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return nil, errors.New("not found - 404")
	}

	return &models.Editions{
		Count:      3,
		Offset:     0,
		Limit:      3,
		TotalCount: 3,
		Items: []models.Edition{
			{
				Links: &models.EditionLinks{
					Self: &models.Link{
						ID: "edition-1",
					},
				},
			},
			{
				Links: &models.EditionLinks{
					Self: &models.Link{
						ID: "edition-2",
					},
				},
			},
			{
				Links: &models.EditionLinks{
					Self: &models.Link{
						ID: "edition-3",
					},
				},
			},
		},
	}, nil
}

func (m *Mock) GetEdition(ctx context.Context, codeListID, edition string) (*models.Edition, error) {
	if m.IsBackendReachable != true {
		return nil, errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return nil, errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return nil, errors.New("not found - 404")
	}

	return &models.Edition{
		Links: &models.EditionLinks{
			Self: &models.Link{
				ID: edition,
			},
		},
	}, nil
}

func (m *Mock) GetCodes(ctx context.Context, codeListID, edition string) (*models.CodeResults, error) {
	if m.IsBackendReachable != true {
		return nil, errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return nil, errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return nil, errors.New("not found - 404")
	}

	return &models.CodeResults{
		Count:      3,
		Offset:     0,
		Limit:      3,
		TotalCount: 3,
		Items: []models.Code{
			{
				Links: &models.CodeLinks{
					Self: &models.Link{
						ID: "code-1",
					},
				},
			},
			{
				Links: &models.CodeLinks{
					Self: &models.Link{
						ID: "code-2",
					},
				},
			},
			{
				Links: &models.CodeLinks{
					Self: &models.Link{
						ID: "code-3",
					},
				},
			},
		},
	}, nil
}

func (m *Mock) GetCode(ctx context.Context, codeListID, edition string, code string) (*models.Code, error) {
	if m.IsBackendReachable != true {
		return nil, errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return nil, errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return nil, errors.New("not found - 404")
	}

	return &models.Code{
		Links: &models.CodeLinks{
			Self: &models.Link{
				ID: code,
			},
		},
	}, nil
}

func (m *Mock) GetCodeDatasets(ctx context.Context, codeListID, edition string, code string) (*models.Datasets, error) {
	if m.IsBackendReachable != true {
		return nil, errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return nil, errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return nil, errors.New("not found - 404")
	}

	return &models.Datasets{
		Items: []models.Dataset{
			{
				DimensionLabel: "label 1",
				Links: &models.DatasetLinks{
					Self: &models.Link{
						ID: code,
					},
				},
				Editions: []models.DatasetEdition{
					{
						Links: &models.DatasetEditionLinks{
							Self: &models.Link{
								ID: "edition-1",
							},
							LatestVersion: &models.Link{
								ID: "1",
							},
							DatasetDimension: &models.Link{
								ID: codeListID,
							},
						},
					},
					{
						Links: &models.DatasetEditionLinks{
							Self: &models.Link{
								ID: "edition-2",
							},
							LatestVersion: &models.Link{
								ID: "1",
							},
							DatasetDimension: &models.Link{
								ID: codeListID,
							},
						},
					},
					{
						Links: &models.DatasetEditionLinks{
							Self: &models.Link{
								ID: "edition-3",
							},
							LatestVersion: &models.Link{
								ID: "1",
							},
							DatasetDimension: &models.Link{
								ID: codeListID,
							},
						},
					},
				},
			},
		},
	}, nil
}
