#!/usr/bin/env bash

usage() {
cat << EOF >&2

Run replica set on localhost.
If necessary, create data and log directories.

Usage:
    $(basename $0) REPLICA_SET_NAME

Example:
    bin/$(basename $0) carbon
EOF
}

if [ $# -eq 0 ]; then
  usage
  exit 0
fi

name=$1
dbpath=$1/data
logpath=$1/log

echo mkdir -p $dbpath-{1,2,3} $logpath-{1,2,3}

pid=$1/pid

mongod --port 27001 --replSet $name \
  --dbpath $dbpath-1 --logpath $path-1 --logappend  \
  --pidfilepath $pid-1 --fork \
  --oplogSize 50 --smallfiles

mongod --port 27002 --replSet $name \
  --dbpath $dbpath-2 --logpath $path-2 --logappend  \
  --pidfilepath $pid-2 --fork \
  --oplogSize 50 --smallfiles

mongod --port 27003 --replSet $name \
  --dbpath $dbpath-3 --logpath $path-3 --logappend  \
  --pidfilepath $pid-3 --fork \
  --oplogSize 50 --smallfiles
