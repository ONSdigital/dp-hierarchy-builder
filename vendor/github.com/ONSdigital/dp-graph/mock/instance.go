package mock

import (
	"context"
)

func (m *Mock) CountInsertedObservations(ctx context.Context, instanceID string) (count int64, err error) {
	return 0, m.checkForErrors()
}
