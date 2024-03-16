#!/bin/bash

set -ex

build () {
  pushd $1
    mkdir build
    pushd build
      cmake ..
      cmake --build .
      if [ $# -eq 2 ]; then
        cmake --install .
      fi
    popd
  popd
}

rm -r exampleA/build \
  exampleB/build \
  exampleC/build \
  deps

mkdir deps
build exampleC install
build exampleB install
build exampleA
