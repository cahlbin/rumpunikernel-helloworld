#!/usr/bin/env bash
set -e
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# extract SSH config file to be used to SSH into XenServer VM
SSH_CONFIG_FILE="/tmp/$(basename $0).$$.tmp"
pushd "${SCRIPT_DIR}/../xenbox"
vagrant ssh

