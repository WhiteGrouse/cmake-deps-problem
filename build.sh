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

rm -r example1/build \
  example2/build \
  example3/build \
  deps

mkdir deps
build example1 install
build example2 install
build example3
