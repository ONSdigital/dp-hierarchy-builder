#!/bin/bash -eux

cwd=$(pwd)

pushd $cwd/dp-hierarchy-builder
  make test
popd