#!/usr/bin/env bash

usage() {
cat << EOF >&2

Stop standalone MongoDB deployed with the bin/deploy_standalone.sh script.

Usage:
    $(basename $0) STANDALONE_NAME

Example:
    bin/$(basename $0) standalone

EOF
}

if [ $# -eq 0 ]; then
  usage
  exit 0
fi

if [[ "$1" == "--help" || "$1" == "-help" || "$1" == "-h" ]]; then
  usage
  exit 0
fi

kill -2 $(cat /tmp/mongod-$1.lock)

# rm /tmp/mongod-$1.lock
