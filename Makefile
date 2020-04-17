SHELL=bash

BUILD=build
BUILD_ARCH=$(BUILD)/$(GOOS)-$(GOARCH)
BIN_DIR?=.

V4_TRANSFORMER_DIR=cmd/v4-transformer

DATABASE_ADDRESS?=bolt://localhost:7687

export GOOS?=$(shell go env GOOS)
export GOARCH?=$(shell go env GOARCH)

BUILD_TIME=$(shell date +%s)
GIT_COMMIT=$(shell git rev-parse HEAD)
VERSION ?= $(shell git tag --points-at HEAD | grep ^v | head -n 1)
LDFLAGS=-ldflags "-w -s -X 'main.Version=${VERSION}' -X 'main.BuildTime=$(BUILD_TIME)' -X 'main.GitCommit=$(GIT_COMMIT)'"

build:
	@mkdir -p $(BUILD_ARCH)/$(BIN_DIR)
	go build $(LDFLAGS) -o $(BUILD_ARCH)/$(BIN_DIR)/dp-hierarchy-builder cmd/dp-hierarchy-builder/main.go
debug: build
	HUMAN_LOG=1 GRAPH_DRIVER_TYPE=neo4j GRAPH_ADDR="$(DATABASE_ADDRESS)" GRAPH_QUERY_TIMEOUT=600 go run $(LDFLAGS) -race cmd/dp-hierarchy-builder/main.go
test:
	go test -cover -race ./...

full:
	cypher-shell < "$(V4_TRANSFORMER_DIR)/output/hierarchy.cypher"
full-clean:
	cypher-shell < "$(V4_TRANSFORMER_DIR)/output/hierarchy-delete.cypher"
instance-builder:
	[[ -n "$(INSTANCE_ID)" ]]
	HUMAN_LOG=1 GRAPH_DRIVER=neo4j GRAPH_ADDR="$(DATABASE_ADDRESS)" go run -race cmd/builder/main.go --instance-id="$(INSTANCE_ID)"
instance:
	[[ -n "$(INSTANCE_ID)" ]]
	sed "s/12345/$(INSTANCE_ID)/g" < cmd/builder/build.cypher | cypher-shell
instance-clean:
	[[ -n "$(INSTANCE_ID)" ]]
	sed "s/12345/$(INSTANCE_ID)/g" < cmd/builder/build-delete.cypher | cypher-shell
generate-full:
	HUMAN_LOG=1 go run -race cmd/hierarchy-transformer/main.go
generate-full-from-v4:
	HUMAN_LOG=1 go run -race "$(V4_TRANSFORMER_DIR)/main.go"
generate-full-from-geography:
	HUMAN_LOG=1 go run -race cmd/geography-transformer/main.go
clean: full-clean instance-clean

.PHONY: build debug test full instance clean full-clean instance-builder instance-clean generate-full
