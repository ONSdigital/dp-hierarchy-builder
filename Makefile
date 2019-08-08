SHELL=bash

BUILD=build
BUILD_ARCH=$(BUILD)/$(GOOS)-$(GOARCH)
BIN_DIR?=.

V4_TRANSFORMER_DIR=cmd/v4-transformer

export GOOS?=$(shell go env GOOS)
export GOARCH?=$(shell go env GOARCH)

export GRAPH_DRIVER_TYPE?=neptune
export GRAPH_ADDR?=ws://localhost:8182/gremlin

build:
	@mkdir -p $(BUILD_ARCH)/$(BIN_DIR)
	go build -o $(BUILD_ARCH)/$(BIN_DIR)/dp-hierarchy-builder cmd/dp-hierarchy-builder/main.go
debug:
	HUMAN_LOG=1 go run -race cmd/dp-hierarchy-builder/main.go
test:
	go test -count=1 -race -cover $(shell go list ./... | grep -v /vendor/)

full:
	cypher-shell < "$(V4_TRANSFORMER_DIR)/output/hierarchy.cypher"
full-clean:
	cypher-shell < "$(V4_TRANSFORMER_DIR)/output/hierarchy-delete.cypher"
instance-builder:
	[[ -n "$(INSTANCE_ID)" ]]
	HUMAN_LOG=1 go run -race cmd/builder/main.go --instance-id="$(INSTANCE_ID)"
instance:
	[[ -n "$(INSTANCE_ID)" ]]
	sed "s/12345/$(INSTANCE_ID)/g" < cmd/builder/build.cypher | cypher-shell
instance-clean:
	[[ -n "$(INSTANCE_ID)" ]]
	sed "s/12345/$(INSTANCE_ID)/g" < cmd/builder/build-delete.cypher | cypher-shell
generate-full:
	HUMAN_LOG=1 go run -race cmd/hierarchy-transformer/main.go
generate-full-import:
	HUMAN_LOG=1 go run -race cmd/hierarchy-transformer/main.go -file import-scripts/$(CODE_LIST).csv -cypher import-scripts/cypher/$(CODE_LIST).cypher -gremlin import-scripts/gremlin/$(CODE_LIST).grm
generate-full-from-v4:
	HUMAN_LOG=1 go run -race "$(V4_TRANSFORMER_DIR)/main.go"
generate-full-from-geography:
	HUMAN_LOG=1 go run -race cmd/geography-transformer/main.go
clean: full-clean instance-clean

.PHONY: build debug test full instance clean full-clean instance-builder instance-clean generate-full
