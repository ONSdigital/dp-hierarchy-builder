package mock

import (
	"context"
)

type Mock struct {
	IsBackendReachable bool
	IsQueryValid       bool
	IsContentFound     bool
}

func (m *Mock) Close(ctx context.Context) error {
	return nil
}
