package neptune

import (
	"context"

	"github.com/ONSdigital/dp-graph/observation"
	"github.com/ONSdigital/dp-observation-importer/models"
)

func (n *NeptuneDB) StreamCSVRows(ctx context.Context, filter *observation.Filter, limit *int) (observation.StreamRowReader, error) {
	return nil, nil
}

func (n *NeptuneDB) InsertObservationBatch(ctx context.Context, attempt int, instanceID string, observations []*models.Observation, dimensionIDs map[string]string) error {
	return nil
}
