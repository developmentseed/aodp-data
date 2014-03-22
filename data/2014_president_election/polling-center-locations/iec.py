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

def parse(data):
	global row 
	global geojson

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
			"verification_note": item['attributes']['Verification_Note'],
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
		geojson['features'].append(feature)

## Start of script
geojson = {
	"type": "FeatureCollection",
    "features": []
    }

os.chdir("original/")
for fn in os.listdir('.'):
	if fn.endswith(".json"):
		data_file = open(fn, "rb").read()
		data = json.loads(data_file)
		parse(data)

writeout = json.dumps(geojson, sort_keys=True, separators=(',',':'))
f_out = open('../iec_polling_centers.geojson', 'wb')
f_out.writelines(writeout)
f_out.close()

print count
print row




