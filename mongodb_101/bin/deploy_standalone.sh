#! /usr/bin/env bash

usage() {
cat << EOF >&2

Run/Deploy standalone MongoDB on localhost.
If necessary, create data and log directories.

Usage:
    $(basename $0) FOLDER_FOR_LOGS_AND_DATA

Example:
    bin/$(basename $0) standalone

EOF
}

if [ $# -eq 0 ]; then
  usage
  exit 0
fi

name=$1
dbpath=$name/data
log=$name/$name.log
pid=/tmp/mongod-${name}.lock

mkdir -p $dbpath

mongod --port 27017 \
  --dbpath ${dbpath} --logpath ${log} --logappend  \
  --pidfilepath ${pid} --fork \
  --oplogSize 50 --smallfiles

# mongo --host localhost:27017
