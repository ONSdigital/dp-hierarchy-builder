package mock

import (
	"context"
	"errors"
)

func (m *Mock) CreateInstanceHierarchyConstraints(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	if m.IsBackendReachable != true {
		return errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return errors.New("not found - 404")
	}

	return nil
}

func (m *Mock) CloneNodes(ctx context.Context, attempt int, instanceID, codeListID, dimensionName string) error {
	if m.IsBackendReachable != true {
		return errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return errors.New("not found - 404")
	}

	return nil
}

func (m *Mock) CountNodes(ctx context.Context, instanceID, dimensionName string) (count int64, err error) {
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

func (m *Mock) CloneRelationships(ctx context.Context, attempt int, instanceID, codeListID, dimensionName string) error {
	if m.IsBackendReachable != true {
		return errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return errors.New("not found - 404")
	}

	return nil
}

func (m *Mock) SetNumberOfChildren(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	if m.IsBackendReachable != true {
		return errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return errors.New("not found - 404")
	}

	return nil
}

func (m *Mock) SetHasData(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	if m.IsBackendReachable != true {
		return errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return errors.New("not found - 404")
	}

	return nil
}

func (m *Mock) MarkNodesToRemain(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	if m.IsBackendReachable != true {
		return errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return errors.New("not found - 404")
	}

	return nil
}

func (m *Mock) RemoveNodesNotMarkedToRemain(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	if m.IsBackendReachable != true {
		return errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return errors.New("not found - 404")
	}

	return nil
}

func (m *Mock) RemoveRemainMarker(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	if m.IsBackendReachable != true {
		return errors.New("database unavailble - 500")
	}

	if m.IsQueryValid != true {
		return errors.New("invalid query - 400")
	}

	if m.IsContentFound != true {
		return errors.New("not found - 404")
	}

	return nil
}
