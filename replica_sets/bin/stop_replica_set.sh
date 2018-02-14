#!/usr/bin/env bash

kill -2 $(cat /tmp/mongod-carbon-1.lock)
kill -2 $(cat /tmp/mongod-carbon-2.lock)
kill -2 $(cat /tmp/mongod-carbon-3.lock)
