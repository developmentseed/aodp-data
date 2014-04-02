#!/usr/bin/python

import os, sys, time
import simplejson as json
import csv

data_fileEN = open('iec_polling_centers_en_feb2014.geojson', "rb").read()
dataEN = json.loads(data_fileEN)

data_fileDR = open('iec_polling_centers_dr_feb2014.geojson', "rb").read()
dataDR = json.loads(data_fileDR)

csv_read = csv.DictReader(open('iec_locations_closed_march31.csv', 'rb'), delimiter= ',', quotechar = '"')

closed = []
for c in csv_read:
	if c['pc_code'] not in closed:
		closed.append(c['pc_code'])

countEN = 0
for item in dataEN['features']:
	if item['properties']['pc_code'] in closed:
		item['properties']['closed'] = 1
		countEN += 1
	else:
		item['properties']['closed'] = 0

countDR = 0
for item in dataDR['features']:
	if item['properties']['pc_code'] in closed:
		item['properties']['closed'] = 1
		countDR += 1
	else:
		item['properties']['closed'] = 0

writeout = json.dumps(dataEN, sort_keys=True, separators=(',',':'))
f_out = open('iec_polling_centers_en_updated_march31.geojson', 'wb')
f_out.writelines(writeout)
f_out.close()

writeout = json.dumps(dataDR, sort_keys=True, separators=(',',':'))
f_out = open('iec_polling_centers_dr_updated_march31.geojson', 'wb')
f_out.writelines(writeout)
f_out.close()

## Make new only_open files
geojsonEN = {
	"type": "FeatureCollection",
    "features": []
    }
geojsonDR = {
	"type": "FeatureCollection",
    "features": []
    }

for item in dataEN['features']:
	if item['properties']['closed'] == 0:
		geojsonEN['features'].append(item)

for item in dataDR['features']:
	if item['properties']['closed'] == 0:
		geojsonDR['features'].append(item)

writeout = json.dumps(geojsonEN, sort_keys=True, separators=(',',':'))
f_out = open('iec_polling_centers_en_open_march31.geojson', 'wb')
f_out.writelines(writeout)
f_out.close()

writeout = json.dumps(geojsonDR, sort_keys=True, separators=(',',':'))
f_out = open('iec_polling_centers_dr_open_march31.geojson', 'wb')
f_out.writelines(writeout)
f_out.close()


print countEN
print countDR