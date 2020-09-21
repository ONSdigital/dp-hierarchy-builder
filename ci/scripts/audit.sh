#!/bin/bash -eux

export cwd=$(pwd)

pushd $cwd/dp-hierarchy-builder
  make audit
popd 