#!/bin/bash
ROOT=$(dirname $0)/../..
cd ${ROOT}
if [ -z ./build ]; then
    mkdir build
fi
cd build
if [ -z "$1" ]
then
    ctest --output-on-failure
else
    ctest -R $1 --output-on-failure
fi