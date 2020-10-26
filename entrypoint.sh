#!/usr/bin/env bash

gem install csv
gem install json
./csvConverter.rb

mongoimport --host loofah-database --db=test --collection=craft --file=./craft.json --jsonArray
mongoimport --host loofah-database --db=test --collection=category --file=./category.json --jsonArray
mongoimport --host loofah-database --db=test --collection=skill --file=./skill.json --jsonArray
mongoimport --host loofah-database --db=test --collection=grade --file=./grade.json --jsonArray
