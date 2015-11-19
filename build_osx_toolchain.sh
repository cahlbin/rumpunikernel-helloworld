#!/usr/bin/env bash
set -x
set -e

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# First build NetBSD-based elftools for host platform
mkdir netbsd
pushd netbsd
curl -OOOO http://ftp.dk.NetBSD.org/pub/NetBSD/NetBSD-7.0/source/sets/{share,gnu,sys,}src.tgz
for file in *.tgz; do tar -xzf $file; done
pushd usr/src
./build.sh -U -T elftools.x86_64 -m amd64 tools

