#!/bin/bash

set -e

# .headers on 
# .mode csv 
# .output temp-csv/undp-project-summary.csv 

echo "Processing sqlite..."
sqlite3 2009-president-election.sqlite <<!
create table polling_centers_data_2009 (
	Province text,
	District_ID int,
	Polling_Center_Name_and_Location text,
	PC_Code int,
	Estimated_Voters int,
	Total_PS int,
	Male int,
	Female int,
	Kuchi int
);

create table president_election_results_2009 (
	station_id int,
	polling_id int,
	delta int,
	Ashraf_Ghani_Ahmadzai int,
	Dr_Abdullah_Abdullah int,
	Hamed_Karzai int,
	Ramazan_Bashardost int,
	other int
);

create table centers_not_reporting_2009 (
	Lon real,
	Lat real,
	Province_ID int,
	Province text,
	NonReporting_2009 int,
	Total_Centers_2009 int,
	pct_NonReporting_2009 real
);

create table ecc_complaints_data_2009 (
	Province_name text,
	Province_number int,
	Priority_A int,
	Priority_B int,
	Priority_C int,
	None int,
	Priority_Total int,
	Allegation_1 int,
	Allegation_2 int,
	Allegation_3 int,
	Allegation_4 int,
	Allegation_5 int,
	Allegation_6 int,
	Allegation_7 int,
	Allegation_not_mentioned int,
	Alleg_Total int
);

create table rosetta (
	prov2009 text,
	dist_id_2009 int,
	dist_2009 text,
	dist_ocr_2010 text,
	dist_IEC_2010 text,
	dist_IEC_ID_2010 int,
	AGCHO_Dist text,
	AGCHO_Prov text,
	AGCHO_Dist_ID int
);
.headers on 
.mode csv
.separator ','
.import "pollingcenters_2009.csv" polling_centers_data_2009
.import "sept_16_iec_parseed_data.csv" president_election_results_2009
.import "2009_polling_centers_not_reporting.csv" centers_not_reporting_2009
.import "ECC2009_0.csv" ecc_complaints_data_2009
.import "../af_data/districts_rosetta_stone.csv" rosetta
.quit
!