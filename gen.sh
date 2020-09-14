#! /bin/bash -xe

if [ ! -f gen/fleet.db ]; then
	if [ ! -f fleet.csv ]; then
		# If the fleet dataset isn't downloaded yet, ask to dl first.
		echo "Fleet dataset not downloaded. Please download from NZTA website, extract, and name it fleet.csv and place here."
		exit 1
	fi
	# First, generate the sqlite database if it doesn't already exist.
	mkdir -p gen/
	sqlite3 gen/fleet.db < scripts/gen-db.sql
fi
sqlite3 -bail gen/fleet.db < scripts/unique-models.sql