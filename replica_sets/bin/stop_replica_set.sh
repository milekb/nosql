#!/usr/bin/env bash

usage() {
cat << EOF >&2

Stop replica set created with the bin/deploy_replica_set.sh script.

Usage:
    $(basename $0) REPLICA_SET_NAME

Example:
    bin/$(basename $0) carbon

EOF
}

if [[ "$1" == "--help" || "$1" == "-help" || "$1" == "-h" ]]; then
  usage
  exit 0
fi

echo kill -2 $(cat /tmp/mongod-$1-1.lock)
echo kill -2 $(cat /tmp/mongod-$1-2.lock)
echo kill -2 $(cat /tmp/mongod-$1-3.lock)
