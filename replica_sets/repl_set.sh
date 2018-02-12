mongod --port 27001 --replSet abc --dbpath /Users/wbzyl/.mongo/replica_set/1 --logpath /Users/wbzyl/.mongo/replica_set/log.1 --logappend --oplogSize 50 --fork

mongod --port 27002 --replSet abc --dbpath /Users/wbzyl/.mongo/replica_set/2 --logpath /Users/wbzyl/.mongo/replica_set/log.2 --logappend --oplogSize 50 --fork

mongod --port 27003 --replSet abc --dbpath /Users/wbzyl/.mongo/replica_set/3 --logpath /Users/wbzyl/.mongo/replica_set/log.3 --logappend --oplogSize 50 --fork
