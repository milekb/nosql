#! /bin/bash

neighborhoods='https://raw.githubusercontent.com/mongodb/docs-assets/geospatial/neighborhoods.json'
restaurants='https://raw.githubusercontent.com/mongodb/docs-assets/geospatial/restaurants.json'

curl -s $neighborhoods | gzip --stdout > neighborhoods.json.gz
curl -s $restaurants   | gzip --stdout > restaurants.json.gz
