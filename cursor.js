//   mongo cursor.js

var options = { allowDiskUse: true, cursor: { batchSize: 4 } };

var group = {$group: {_id: "$state", totalPop: { $sum: "$pop" } }};
var match = {$match: { totalPop: { $gte: 10*1000*1000 } }};

// use zip
var cursor = db.codes.aggregate([
  group,
  match
], options );

cursor.forEach(function(d) {
  printjson(d);
});
