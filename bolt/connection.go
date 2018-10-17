package bolt

import (
	bolt "github.com/johnnadratowski/golang-neo4j-bolt-driver"
)

//go:generate moq -out bolttest/connection.go -pkg bolttest . Conn
type Conn bolt.Conn
