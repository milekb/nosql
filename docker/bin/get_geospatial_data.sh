#! /bin/bash

neighborhoods='https://raw.githubusercontent.com/mongodb/docs-assets/geospatial/neighborhoods.json'
restaurants='https://raw.githubusercontent.com/mongodb/docs-assets/geospatial/restaurants.json'
zipcodes='http://media.mongodb.org/zips.json'

curl -s $neighborhoods | gzip --stdout > neighborhoods.json.gz
curl -s $restaurants   | gzip --stdout > restaurants.json.gz
curl -s $zipcodes   | gzip --stdout > zipcodes.json.gz
