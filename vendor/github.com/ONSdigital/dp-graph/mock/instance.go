package mock

import (
	"context"
)

func (m *Mock) CountInsertedObservations(ctx context.Context, instanceID string) (count int64, err error) {
<<<<<<< HEAD
	if err := m.checkForErrors(); err != nil {
		return 0, err
	}

	return 100, nil
=======
	return 0, m.checkForErrors()
>>>>>>> cmd-develop
}
