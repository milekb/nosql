#!/usr/bin/env bash

usage() {
cat << EOF >&2

Stop replica set created with the bin/deploy_replica_set.sh script.

EOF
}

if [ $# -gt 0 ]; then
  usage
  exit 0
fi

kill -2 $(cat /tmp/mongod-carbon-1.lock)
kill -2 $(cat /tmp/mongod-carbon-2.lock)
kill -2 $(cat /tmp/mongod-carbon-3.lock)
