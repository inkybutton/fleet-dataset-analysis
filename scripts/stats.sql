# This script outputs various stats about silver hatchbacks, NZ's favourite car.
# Total number of silver hatchbacks in NZ
select count() from 
(select MAKE,MODEL,SUBMODEL,VEHICLE_YEAR from fleet where 
BODY_TYPE="HATCHBACK" and 
(BASIC_COLOUR="SILVER" or BASIC_COLOUR="GREY") and 
VEHICLE_TYPE="PASSENGER CAR/VAN" and 
NUMBER_OF_SEATS <= 5 
order by MAKE,MODEL,SUBMODEL,VEHICLE_YEAR);

# Total number of silver hatchbacks from 1999 - 2005 in Auckland.
select count() from 
(select MAKE,MODEL,SUBMODEL,VEHICLE_YEAR from fleet where 
BODY_TYPE="HATCHBACK" 
and (BASIC_COLOUR="SILVER" or BASIC_COLOUR="GREY") and 
TLA="AUCKLAND" and 
VEHICLE_TYPE="PASSENGER CAR/VAN" and 
NUMBER_OF_SEATS <= 5 and 
VEHICLE_YEAR > 1999 and 
VEHICLE_YEAR < 2005 
order by MAKE,MODEL,SUBMODEL,VEHICLE_YEAR);