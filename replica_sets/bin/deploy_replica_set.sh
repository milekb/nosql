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
log=$name
pid=/tmp/mongod-${name}

mkdir -p $dbpath-{1,2,3}

mongod --port 27001 --bind_ip localhost --replSet $name \
  --dbpath ${dbpath}-1 --logpath ${log}/1.log --logappend  \
  --pidfilepath ${pid}-1.lock --fork \
  --oplogSize 50 --smallfiles

mongod --port 27002 --bind_ip localhost --replSet $name \
  --dbpath ${dbpath}-2 --logpath ${log}/1.log --logappend  \
  --pidfilepath ${pid}-2.lock --fork \
  --oplogSize 50 --smallfiles

mongod --port 27003 --bind_ip localhost --replSet $name \
  --dbpath ${dbpath}-3 --logpath ${log}/3.log --logappend  \
  --pidfilepath ${pid}-3.lock --fork \
  --oplogSize 50 --smallfiles

# mongo --host localhost:27001
