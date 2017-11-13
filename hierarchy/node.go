package hierarchy

// Node represents a single node in a hierarchy, linking to child nodes.
type Node struct {
	Level      int
	Code       string
	CodeList   string
	ParentCode string

	Label           string
	LabelCode       string
	ParentLabelCode string

	Children []*Node
}
