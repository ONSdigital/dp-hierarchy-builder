package neptune

import (
	"context"

	"github.com/ONSdigital/dp-code-list-api/models"
)

func (n *NeptuneDB) GetCodeLists(ctx context.Context, filterBy string) (*models.CodeListResults, error) {
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

func (n *NeptuneDB) GetCodeList(ctx context.Context, codeListID string) (*models.CodeList, error) {
	return &models.CodeList{
		Links: &models.CodeListLink{
			Self: &models.Link{
				ID: codeListID,
			},
		},
	}, nil
}

func (n *NeptuneDB) GetEditions(ctx context.Context, codeListID string) (*models.Editions, error) {
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

func (n *NeptuneDB) GetEdition(ctx context.Context, codeListID, edition string) (*models.Edition, error) {
	return &models.Edition{
		Links: &models.EditionLinks{
			Self: &models.Link{
				ID: edition,
			},
		},
	}, nil
}

func (n *NeptuneDB) GetCodes(ctx context.Context, codeListID, edition string) (*models.CodeResults, error) {
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

func (n *NeptuneDB) GetCode(ctx context.Context, codeListID, edition string, code string) (*models.Code, error) {
	return &models.Code{
		Links: &models.CodeLinks{
			Self: &models.Link{
				ID: code,
			},
		},
	}, nil
}

func (n *NeptuneDB) GetCodeDatasets(ctx context.Context, codeListID, edition string, code string) (*models.Datasets, error) {
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
