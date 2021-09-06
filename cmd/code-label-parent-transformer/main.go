package main

/**

This generator takes a csv file in the format code,label,parent and adds a code-list column
to become a valid hierarchy input CSV

*/

import (
	"bufio"
	"bytes"
	"context"
	"flag"
	"github.com/ONSdigital/log.go/v2/log"
	"io/ioutil"
	"os"
)

var filepath = flag.String("file", "import-scripts/code-label-parent-csv/cpih1dim1aggid.csv", "The path to the import filepath")
var codeListID = flag.String("code-list-id", "cpih1dim1aggid", "")
var outputFile = flag.String("output", "import-scripts/cpih1dim1aggid.csv", "")

func main() {

	ctx := context.Background()
	flag.Parse()

	// open the input file
	f, err := os.Open(*filepath)
	if err != nil {
		log.Error(ctx, "Failed to open input file", err, log.Data{"file": *filepath})
		os.Exit(1)
	}

	log.Info(ctx, "Opened", log.Data{"file": *filepath})
	reader := bufio.NewReader(f)
	defer f.Close()

	var buffer = &bytes.Buffer{}
	var line []byte

	// header
	line, _, err = reader.ReadLine()
	if err != nil {
		log.Error(ctx, "Failed to read header row", err, log.Data{"file": *filepath})
		os.Exit(1)
	}

	buffer.WriteString("codelist," + string(line) + "\n")
	if err != nil {
		log.Error(ctx, "Write header row", err, log.Data{"file": *filepath})
		os.Exit(1)
	}

	for err == nil {
		line, _, err = reader.ReadLine()

		if len(string(line)) > 0 {
			buffer.WriteString(*codeListID + "," + string(line) + "\n")
		}
	}

	ioutil.WriteFile(*outputFile, []byte(buffer.String()), 0644)
}
