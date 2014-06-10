#!/usr/bin/python

import os, sys, time
import simplejson as json
from osgeo import gdal,osr

# Transform from Minna / Nigeria Mid Belt to WGS84
#   http://spatialreference.org/ref/sr-org/6928/
#   WGS83 EPSG = 4326

inSRS = 3857
outSRS = 4326

count = 0
row = 0

def transformTo(x, y, inSRS, outSRS):
	global count

	inproj = osr.SpatialReference()
	outproj = osr.SpatialReference()

	inproj.ImportFromEPSG(inSRS)
	outproj.ImportFromEPSG(outSRS)

	transForm = osr.CoordinateTransformation(inproj, outproj)

	transformed = transForm.TransformPoint(x,y)
	count = count + 1

	return transformed

def parseEN(data):
	global row
	global geojsonEN

	for item in data['features']:
		row = row + 1
		feature = {
				"type": "Feature",
				"geometry": {
					"type": "Point",
					"coordinates": []
				},
			"properties": {}
		}
		feature['properties'] = {
			"province": item['attributes']['Province'].title(),
			"pc_code": item['attributes']['PC_Code'],
			"iec_prov_id": item['attributes']['PC_Code'][0:2],
			"iec_district_id": item['attributes']['PC_Code'][2:4],
			"district": item['attributes']['District'].title(),
			"pc_name": item['attributes']['Polling_Center_Name'].title(),
			"pc_location": item['attributes']['Polling_Center_Location'].title(),
			"ps_total": int(item['attributes']['PS_Male']) + int(item['attributes']['PS_Female']),
			"ps_male": item['attributes']['PS_Male'],
			"ps_female": item['attributes']['PS_Female'],
			"map_accuracy": item['attributes']['Map_Accuracy']
		}
		x = item['geometry']['x']
		y = item['geometry']['y']
		coords = transformTo(x, y, 3857, 4326)
		feature['geometry']['coordinates'].append(coords[0])
		feature['geometry']['coordinates'].append(coords[1])
		# feature['geometry']['coordinates'].append(x)
		# feature['geometry']['coordinates'].append(y)
		geojsonEN['features'].append(feature)

def parseDR(data):
	global row
	global geojsonDR

	for item in data['features']:
		row = row + 1
		feature = {
				"type": "Feature",
				"geometry": {
					"type": "Point",
					"coordinates": []
				},
			"properties": {}
		}
		feature['properties'] = {
			"province": item['attributes'][u'\u0648\u0644\u0627\u06cc\u062a'],
			"pc_code": item['attributes']['PC_Code'],
			"iec_prov_id": item['attributes']['PC_Code'][0:2],
			"iec_district_id": item['attributes']['PC_Code'][2:4],
			"pc_name": item['attributes'][u'\u062f_\u0645\u0631\u06a9\u0632_\u0646\u0648\u0645__\u0646\u0627\u0645_\u0645\u0631\u06a9\u0632'],
			"pc_location": item['attributes'][u'\u062f_\u0645\u0631\u06a9\u0632_\u0681\u0627\u06cc__\u0645\u0648\u0642\u0639\u06cc\u062a_\u0645\u0631\u06a9\u0632'],
			"ps_total": int(item['attributes']['PS_Male']) + int(item['attributes']['PS_Female']),
			"ps_male": item['attributes']['PS_Male'],
			"ps_female": item['attributes']['PS_Female'],
			"map_accuracy": item['attributes']['Map_Accuracy']
		}
		x = item['geometry']['x']
		y = item['geometry']['y']
		coords = transformTo(x, y, 3857, 4326)
		feature['geometry']['coordinates'].append(coords[0])
		feature['geometry']['coordinates'].append(coords[1])
		# feature['geometry']['coordinates'].append(x)
		# feature['geometry']['coordinates'].append(y)
		geojsonDR['features'].append(feature)

## Start of script
geojsonEN = {
	"type": "FeatureCollection",
    "features": []
    }
geojsonDR = {
	"type": "FeatureCollection",
    "features": []
    }

os.chdir("raw/")
for fn in os.listdir('.'):
	if fn.endswith(".json"):
		data_file = open(fn, "rb").read()
		data = json.loads(data_file)
		parseEN(data)
		parseDR(data)

writeout = json.dumps(geojsonEN, sort_keys=True, separators=(',',':'))
f_out = open('../iec_runoff_polling_centers_en_jun2014.geojson', 'wb')
f_out.writelines(writeout)
f_out.close()

writeout = json.dumps(geojsonDR, sort_keys=True, separators=(',',':'))
f_out = open('../iec_runoff_polling_centers_dr_jun2014.geojson', 'wb')
f_out.writelines(writeout)
f_out.close()

print count
print row
