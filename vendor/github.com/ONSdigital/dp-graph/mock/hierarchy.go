package mock

import (
	"context"
)

func (m *Mock) CreateInstanceHierarchyConstraints(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	return m.checkForErrors()
}

func (m *Mock) CloneNodes(ctx context.Context, attempt int, instanceID, codeListID, dimensionName string) error {
	return m.checkForErrors()
}

func (m *Mock) CountNodes(ctx context.Context, instanceID, dimensionName string) (count int64, err error) {
	return 0, m.checkForErrors()
}

func (m *Mock) CloneRelationships(ctx context.Context, attempt int, instanceID, codeListID, dimensionName string) error {
	return m.checkForErrors()
}

func (m *Mock) SetNumberOfChildren(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	return m.checkForErrors()
}

func (m *Mock) SetHasData(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	return m.checkForErrors()
}

func (m *Mock) MarkNodesToRemain(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	return m.checkForErrors()
}

func (m *Mock) RemoveNodesNotMarkedToRemain(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	return m.checkForErrors()
}

func (m *Mock) RemoveRemainMarker(ctx context.Context, attempt int, instanceID, dimensionName string) error {
	return m.checkForErrors()
}
