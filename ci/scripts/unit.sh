#!/bin/bash -eux

export GOPATH=$(pwd)/go

pushd $GOPATH/src/github.com/ONSdigital/dp-hierarchy-builder
  make test
popd