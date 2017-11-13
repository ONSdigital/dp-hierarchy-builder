package v4

import (
	"strings"
	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
)

// HierarchicalLabelReader reads a code / label pair from a V4 file and parses hierarchy information from the label.
type HierarchicalLabelReader struct {
	dimensionOptionReader DimensionOptionReader
	rootLabelCode         string
}

// NewHierarchicalLabelReader returns a new reader. The root code is required as no hierarchy info can be determined from level 0 and 1
func NewHierarchicalLabelReader(reader DimensionOptionReader, rootLabelCode string) *HierarchicalLabelReader {
	return &HierarchicalLabelReader{
		dimensionOptionReader: reader,
		rootLabelCode:         rootLabelCode,
	}
}

// Read a V4 dimension label and extract hierarchy related data.
func (reader HierarchicalLabelReader) Read() (*hierarchy.Node, error) {

	code, label, err := reader.dimensionOptionReader.Read()
	if err != nil {
		return nil, err
	}

	var (
		labelCode       = strings.SplitN(label, " ", 2)[0]
		level           int
		parentLabelCode string
	)

	if labelCode == reader.rootLabelCode {
		level = 0
		parentLabelCode = ""
	} else {

		labelCodeSegments := strings.Split(labelCode, ".")
		level = len(labelCodeSegments)

		// join the Label Code segments without the last segment to get the parent
		parentLabelCode = strings.Join(labelCodeSegments[:len(labelCodeSegments)-1], ".")

		// special case for the nodes that sit directly under the root, just set the parent to the root
		if parentLabelCode == "" {
			parentLabelCode = reader.rootLabelCode
		}
	}

	return &hierarchy.Node{
		Code:            code,
		Label:           label,
		Level:           level,
		LabelCode:       labelCode,
		ParentLabelCode: parentLabelCode,
	}, nil
}
