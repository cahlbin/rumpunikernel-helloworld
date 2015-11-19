#!/usr/bin/env bash
set -x
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

TOOLCHAIN_DIR="${SCRIPT_DIR}/netbsd/usr/src/elftools.x86_64"

export PATH=$TOOLCHAIN_DIR/bin:$PATH
export READELF=$TOOLCHAIN_DIR/bin/x86_64--netbsd-readelf
export CC=$TOOLCHAIN_DIR/bin/x86_64--netbsd-gcc
export CXX=$TOOLCHAIN_DIR/bin/x86_64--netbsd-g++
export LD=$TOOLCHAIN_DIR/bin/x86_64--netbsd-ld

pushd rumprun
./build-rr.sh xen


