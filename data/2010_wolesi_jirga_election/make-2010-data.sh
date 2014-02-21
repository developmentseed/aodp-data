#!/bin/bash

set -e

wget -O wj_2010_final.zip http://afghanistanelectiondata.org/sites/default/files/wj_2010_final.zip
unzip -qj wj_2010_final.zip

# .headers on 
# .mode csv 
# .output temp-csv/undp-project-summary.csv 

echo "Processing sqlite..."
sqlite3 2010-wj-election.sqlite <<!

create table wj_master_data_2010 (
	NameOnBallot text,
	BallotOrder int,
	CouncilID text,
	Province_EnglishName text,
	Vote int,
	District_Name text,
	PC int,
	PC_Name text,
	PS int,
	Is_PS_OPEN int,
	Type_Of_Station text,
	Status int,
	District_EnglishName text,
	District_DariName text,
	ProvinceId int,
	VoterID text,
	CandidateID int,
	Gender text
);

create table wj_pollingcenters_2010 (
	province text,
	province_d text,
	district text,
	district_d text,
	pc text,
	pc_d text,
	prov int,
	dist int,
	provDist int,
	pc_code int,
	estimated_voters float,
	total_ps int,
	male int,
	female int,
	kuchi int,
	accessibility text
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
.import "wj_2010_final.csv" wj_master_data_2010
.import "iec_2010_centers.csv" wj_pollingcenters_2010
.import "../af_data/districts_rosetta_stone.csv" rosetta
.quit
!