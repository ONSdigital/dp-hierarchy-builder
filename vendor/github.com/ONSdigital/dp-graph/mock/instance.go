package mock

import (
	"context"
	"errors"
)

func (m *Mock) CountInsertedObservations(ctx context.Context, instanceID string) (count int64, err error) {
	if m.IsBackendReachable != true {
		return 0, errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return 0, errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return 0, errors.New("not found - 404")
	}

	return 100, nil

}
