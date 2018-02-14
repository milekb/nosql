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
dbpath=$name/data
logpath=$name/log
pid=$name/pid

mkdir -p $dbpath-{1,2,3}
# touch $pid-{1,2,3}

echo mongod --port 27001 --replSet $name \
  --dbpath ${dbpath}-1 --logpath ${logpath}-1.log --logappend  \
  --pidfilepath ${pid}-1 \
  --oplogSize 50 --smallfiles

# mongod --port 27002 --replSet $name \
#   --dbpath $dbpath-2 --logpath $path-2 --logappend  \
#   --pidfilepath $pid-2 --fork \
#   --oplogSize 50 --smallfiles
#
# mongod --port 27003 --replSet $name \
#   --dbpath $dbpath-3 --logpath $path-3 --logappend  \
#   --pidfilepath $pid-3 --fork \
#   --oplogSize 50 --smallfiles
