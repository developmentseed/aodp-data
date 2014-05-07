#!/usr/bin/python

import os, sys, time
import simplejson as json
import csv

data_fileEN = open('../polling-center-locations/iec_polling_centers_en_updated_march31.geojson', "rb").read()
dataEN = json.loads(data_fileEN)

data_fileDR = open('../polling-center-locations/iec_polling_centers_dr_updated_march31.geojson', "rb").read()
dataDR = json.loads(data_fileDR)

csv_read = csv.DictReader(open('unopened_pc.csv', 'rb'), delimiter= ',', quotechar = '"')

unopened = []
for c in csv_read:
	if c['pc_code'] not in unopened:
		unopened.append(c['pc_code'])

countEN = 0
for item in dataEN['features']:
	if item['properties']['pc_code'] in unopened:
		item['properties']['unopened'] = 1
		countEN += 1
	else:
		item['properties']['unopened'] = 0

countDR = 0
for item in dataDR['features']:
	if item['properties']['pc_code'] in unopened:
		item['properties']['unopened'] = 1
		countDR += 1
	else:
		item['properties']['unopened'] = 0

writeout = json.dumps(dataEN, sort_keys=True, separators=(',',':'))
f_out = open('iec_polling_centers_en_unopened.geojson', 'wb')
f_out.writelines(writeout)
f_out.close()

writeout = json.dumps(dataDR, sort_keys=True, separators=(',',':'))
f_out = open('iec_polling_centers_dr_unopened.geojson', 'wb')
f_out.writelines(writeout)
f_out.close()

print countEN
print countDR
