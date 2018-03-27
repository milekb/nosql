## Aggregation cursors

Note, that aggregation cursors are not available within *mongo* shell.

*Example*: Get states with a population over 10 million.

```js
// cursor.js
//
// Run this code from the command line:
//   mongo zip cursor.js

var options = { allowDiskUse: true, cursor: { batchSize: 4 } };

var group = {$group: {_id: "$state", totalPop: { $sum: "$pop" } }};
var match = {$match: { totalPop: { $gte: 10000000 } }};

// use zip
var cursor = db.codes.aggregate([
  group,
  match
], options );

cursor.forEach(function(d) {
  printjson(d);
});
```

Cursor methods (`db.zipcodes.find().help()`):

* `.toArray()` – iterates through docs and returns an array of the results
* `.forEach( func )`
* `.map( func )`
* `.hasNext()`
* `.next()`
* `.objsLeftInBatch()` – returns count of docs left in current batch
  (when exhausted, a new getMore will be issued)
* `.itcount()` – iterates through documents and counts them
