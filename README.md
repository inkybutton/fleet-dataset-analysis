# Stolen Bike Project - fleet database analysis
Dependencies:
* sqlite3

To get started:
1. Visit the [NZTA vehicle fleet open dataset page](https://www.nzta.govt.nz/
resources/new-zealand-motor-vehicle-register-statistics/
new-zealand-vehicle-fleet-open-data-sets/), 
download the dataset, extract from zip, and place it in the root folder, renaming it as "fleet.csv". 
The most recent dataset is [here](https://nztaopendata.blob.core.windows.net/
motorvehicleregister/Fleet-data-all-vehicle-years.zip).
2. Run the command `./gen.sh`, which will generate a sqlite database and also perform queries against it.
3. You can then interactively query the database by running `sqlite3 gen/fleet.db` and write queries against the `fleet` table.
