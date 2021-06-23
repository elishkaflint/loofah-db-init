#!/usr/bin/env bash

mongoimport --host loofah-database --db=test --collection=craft --file=./data/crafts.json --jsonArray
mongoimport --host loofah-database --db=test --collection=category --file=./data/categories.json --jsonArray
mongoimport --host loofah-database --db=test --collection=skill --file=./data/skills.json --jsonArray
mongoimport --host loofah-database --db=test --collection=grade --file=./data/grades.json --jsonArray
