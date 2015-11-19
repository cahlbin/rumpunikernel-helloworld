#!/usr/bin/env bash
# THIS FILE IS MEANT TO BE SOURCED

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

ELFTOOLS_DIR="${SCRIPT_DIR}/../netbsd/usr/src/elftools.x86_64"
RUMPRUN_BIN_DIR=${SCRIPT_DIR}/../rumprun/rumprun/bin

export PATH=${RUMPRUN_BIN_DIR}:$PATH
export CC=${RUMPRUN_BIN_DIR}/x86_64-rumprun-netbsd-gcc
export READELF=${ELFTOOLS_DIR}/bin/x86_64--netbsd-readelf

#export CXX=${RUMPRUN_BIN_DIR}/x86_64-rumprun-netbsd-g++
#export LD=${RUMPRUN_BIN_DIR}/x86_64-rumprun-netbsd-ld
#export READELF=${RUMPRUN_BIN_DIR}/x86_64-rumprun-netbsd-readelf
