#!/usr/bin/env bash
set -x
set -e

if [ ! -d "xen" ]; then
    echo "Directory 'xen' not found. Forgot git submodule update --init --recursive ?"
    exit 1
fi

# 1) Remove old symlink to /usr/include/xen
# 2) Setup new symlink to xen source from in local repository
cd rumprun/platform/xen/xen/include
rm xen 
ln -s ../../../../../xen/xen/include/public xen
