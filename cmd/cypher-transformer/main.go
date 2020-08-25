package main

/**

This generator takes a cypher hierarchy file and infers a hierarchy, creating a hierarchy input file

*/

import (
	"bufio"
	"context"
	"flag"
	"fmt"
	"os"
	"regexp"
	"strings"

	"github.com/ONSdigital/dp-hierarchy-builder/hierarchy"
	"github.com/ONSdigital/log.go/log"
)

var filepath = flag.String("file", "import-scripts/cypher/output-area-geography.cypher", "The path to the import file")
var outputFile = flag.String("output", "import-scripts/output-area-geography.csv", "The path to the output file")

var KVPattern *regexp.Regexp
var CodeListID *regexp.Regexp
var Relationship *regexp.Regexp

func init() {
	inTicks := "'[^']+'"
	inQuotes := `"[^"]+"`

	KVPattern = regexp.MustCompile("([a-zA-Z0-9_\\-\"`']+) *: *(" + inTicks + "|" + inQuotes + ")[, ]*")
	CodeListID = regexp.MustCompile("^CREATE[ ]*\\(.+_generic_hierarchy_node_([^`]+).*")
	Relationship = regexp.MustCompile("\"(.*?)\"")
}

func main() {

	ctx := context.Background()
	flag.Parse()

	log.Event(ctx, "Opened", log.INFO, log.Data{"file": *filepath})
	input, err := Read(*filepath)
	if err != nil {
		log.Event(ctx, "Failed to read input file", log.ERROR, log.Error(err), log.Data{"file": *filepath})
		os.Exit(1)
	}

	var nodeMap = make(map[string]*hierarchy.Node, 0)
	for _, line := range input.Content {

		if isCreateNode(line) {
			option := createNode(line)
			nodeMap[option.Code] = option
		}

		if isRelationshipLine(line) {
			setParentCode(line, nodeMap)
		}
	}

	writeOutputFile(nodeMap)
}

func writeOutputFile(nodeMap map[string]*hierarchy.Node) {
	output := &File{
		Content: []string{},
	}

	output.Content = append(output.Content, "codelist,code,label,parent")

	for _, node := range nodeMap {
		output.Content = append(output.Content, strings.Join([]string{node.CodeList, node.Code, node.Label, node.ParentCode}, ","))
	}

	output.Write(*outputFile)
}

func setParentCode(line string, nodeMap map[string]*hierarchy.Node) {
	ids := Relationship.FindAllStringSubmatch(line, 4)
	parent := ids[0][1]
	child := ids[1][1]
	nodeMap[child].ParentCode = parent
}

func createNode(line string) *hierarchy.Node {
	ids := CodeListID.FindStringSubmatch(line)
	codeListID := ids[1]
	codeListID = trim(codeListID)

	// read properties
	matches := KVPattern.FindAllStringSubmatch(line, -1)

	kvs := make(map[string]string)
	for _, m := range matches {
		k := trim(m[1])
		v := trim(m[2])
		kvs[k] = v
	}

	// add new map entry
	option := &hierarchy.Node{
		CodeList: strings.Trim(codeListID, " "),
		Code:     strings.Trim(kvs["code"], " "),
		Label:    strings.Trim(kvs["label"], " "),
	}
	//spew.Dump(option)
	return option
}

func trim(s string) string {
	return strings.Trim(s, "\"'")
}

func isCreateNode(line string) bool {
	return strings.HasPrefix(line, "CREATE (node:")
}

func isRelationshipLine(line string) bool {
	return strings.HasPrefix(line, "WHERE parent.code = ")
}

//File contains each line of a text or query file
type File struct {
	Content []string
}

//Read contents of a file at a given path
func Read(name string) (*File, error) {
	file, err := os.Open(name)
	if err != nil {
		return nil, err
	}
	defer file.Close()

	var lines []string
	scanner := bufio.NewScanner(file)
	for scanner.Scan() {
		lines = append(lines, scanner.Text())
	}

	if err := scanner.Err(); err != nil {
		return nil, err
	}

	return &File{lines}, nil
}

//Write contents of file to a prestructured path with the provided ID
func (f *File) Write(output string) error {

	fmt.Println(fmt.Sprintf("Writing %v lines to %s", len(f.Content), output))

	_ = os.Remove(output)
	openFile, err := os.Create(output)
	if err != nil {
		return err
	}
	defer openFile.Close()

	writer := bufio.NewWriter(openFile)
	for _, l := range f.Content {
		_, err = writer.WriteString(l + "\n")
		if err != nil {
			return err
		}
	}
	writer.Flush()

	return nil
}
