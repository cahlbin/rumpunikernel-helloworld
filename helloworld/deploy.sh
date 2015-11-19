#!/usr/bin/env bash
set -e
set -x

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
DIST_DIR=out

# extract SSH config file to be used to SSH/rsync into VM
SSH_CONFIG_FILE="/tmp/$(basename $0).$$.tmp"
pushd "${SCRIPT_DIR}/../xenbox"
vagrant ssh-config > "$SSH_CONFIG_FILE"
popd

# push files with rsync
rsync -e "ssh -F ${SSH_CONFIG_FILE}" \
      -r "${DIST_DIR}"/ \
      vagrant@default:/home/vagrant/
