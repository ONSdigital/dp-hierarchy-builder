package v4

import (
	"encoding/csv"
)

// a map to look up if a particular Code has already been read from the file.
var codesRead = make(map[string]struct{})

// DimensionOptionReader reads a V4 file and provides unique dimension options.
type DimensionOptionReader interface {
	Read() (string, string, error)
}

// UniqueReader reads unique values from a column in a CSV file.
type UniqueReader struct {
	csvReader  csv.Reader
	codeIndex  int
	labelIndex int
}

// NewUniqueReader configures the reader to return values from the given column indexes.
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
	var codeAlreadySeen = true

	for codeAlreadySeen {

		record, err = reader.csvReader.Read()

		if err != nil {
			return "", "", err
		}

		code = record[reader.codeIndex]
		_, codeAlreadySeen = codesRead[code]
	}

	codesRead[code] = struct{}{}

	label := record[reader.labelIndex]

	return code, label, nil
}
