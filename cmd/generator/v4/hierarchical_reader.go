package v4

import "strings"

type HierarchicalLabelReader struct {
	dimensionOptionReader DimensionOptionReader
	rootLabelCode string
}

func NewHierarchicalLabelReader(reader DimensionOptionReader, rootLabelCode string) *HierarchicalLabelReader {
	return &HierarchicalLabelReader {
		dimensionOptionReader:reader,
		rootLabelCode:rootLabelCode,
	}
}

type HierarchicalDimensionOption struct {
	Level           int
	Code            string
	LabelCode       string
	Label           string
	ParentLabelCode string
	Children        []*HierarchicalDimensionOption
}

func (reader HierarchicalLabelReader) Read() (*HierarchicalDimensionOption, error) {

	code, label, err := reader.dimensionOptionReader.Read()
	if err != nil {
		return nil, err
	}

	labelSegments := strings.Split(label, " ")
	labelCode := labelSegments[0]

	var level int
	var parentLabelCode string

	if labelCode == reader.rootLabelCode {
		level = 0
		parentLabelCode = ""
	} else {

		labelCodeSegments := strings.Split(labelCode, ".")
		level = len(labelCodeSegments)

		// join the Label Code segments without the last segment to get the parent
		parentLabelCode = strings.Join(labelCodeSegments[:len(labelCodeSegments) - 1], ".")

		// special case for the nodes that sit directly under the root, just set the parent to the root
		if parentLabelCode == "" {
			parentLabelCode = reader.rootLabelCode
		}
	}

	return &HierarchicalDimensionOption{
		Code:            code,
		Label:           label,
		LabelCode:       labelCode,
		Level:           level,
		ParentLabelCode: parentLabelCode,
	}, nil
}
