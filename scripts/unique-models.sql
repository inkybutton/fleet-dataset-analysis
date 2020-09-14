# This generates a list of unique car models based on criteria which appear
# to match the CCTV footage
.headers on
.mode csv
.output gen/hatchbacks-models.csv
select distinct 
	MAKE,MODEL,SUBMODEL,VEHICLE_YEAR 
from fleet 
where 
	BODY_TYPE="HATCHBACK" and 
	(BASIC_COLOUR="SILVER" or BASIC_COLOUR="GREY") and 
	TLA="AUCKLAND" and 
	VEHICLE_TYPE="PASSENGER CAR/VAN" and  
	VEHICLE_YEAR > 1999 and 
	VEHICLE_YEAR < 2005 and 
	NUMBER_OF_SEATS <= 5 
order by MAKE,MODEL,SUBMODEL,VEHICLE_YEAR;
.output stdout
