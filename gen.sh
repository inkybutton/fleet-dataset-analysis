#! /bin/bash -xe
if [ ! -f gen/fleet.db ]; then
	# First, generate the sqlite database if it doesn't already exist.
	mkdir -p gen/
	sqlite3 gen/fleet.db < scripts/gen-db.sql
fi
sqlite3 -bail gen/fleet.db < scripts/unique-models.sql