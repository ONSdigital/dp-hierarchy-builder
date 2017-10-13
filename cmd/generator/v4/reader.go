package v4

import (
	"encoding/csv"
)

// a map to look up if a particular Code has already been read from the file.
var codesRead map[string]struct{} = make(map[string]struct{})

type DimensionOptionReader interface {
	Read() (string, string, error)
}

// CSVColumnReader reads unique values from a column in a CSV file.
type UniqueReader struct {
	csvReader  csv.Reader
	codeIndex  int
	labelIndex int
}

func NewUniqueReader(csvReader csv.Reader, codeIndex int, labelIndex int) *UniqueReader {

	// discard header row
	_, _ = csvReader.Read()

	return &UniqueReader{
		csvReader:  csvReader,
		codeIndex:  codeIndex,
		labelIndex: labelIndex,
	}
}

// Read will read values from CSV until it finds one that has not already been returned.
func (reader UniqueReader) Read() (string, string, error) {

	var record []string
	var err error
	var code string
	var codeAlreadySeen bool = true

	for codeAlreadySeen {

		record, err = reader.csvReader.Read()

		if err != nil {
			return "", "", err
		}

		code = record[reader.codeIndex]
		_, codeAlreadySeen = codesRead[code]
		//fmt.Println(codesRead, codeAlreadySeen)
	}

	codesRead[code] = struct{}{}

	label := record[reader.labelIndex]

	return code, label, nil
}
