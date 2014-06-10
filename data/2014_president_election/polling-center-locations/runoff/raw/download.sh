#!/bin/bash

set -e

curl -o pc_runoff1.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+0+AND+OBJECTID+%3C%3D200&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff2.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+201+AND+OBJECTID+%3C%3D400&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff3.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+401+AND+OBJECTID+%3C%3D600&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff4.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+601+AND+OBJECTID+%3C%3D800&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff5.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+801+AND+OBJECTID+%3C%3D1000&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff6.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+1001+AND+OBJECTID+%3C%3D1200&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff7.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+1201+AND+OBJECTID+%3C%3D1400&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff8.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+1401+AND+OBJECTID+%3C%3D1600&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff9.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+1601+AND+OBJECTID+%3C%3D1800&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff10.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+1801+AND+OBJECTID+%3C%3D2000&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff11.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+2001+AND+OBJECTID+%3C%3D2200&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff12.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+2201+AND+OBJECTID+%3C%3D2400&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff13.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+2401+AND+OBJECTID+%3C%3D2600&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff14.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+2601+AND+OBJECTID+%3C%3D2800&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff15.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+2801+AND+OBJECTID+%3C%3D3000&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff16.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+3001+AND+OBJECTID+%3C%3D3200&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff17.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+3201+AND+OBJECTID+%3C%3D3400&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff18.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+3401+AND+OBJECTID+%3C%3D3600&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff19.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+3601+AND+OBJECTID+%3C%3D3800&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff20.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+3801+AND+OBJECTID+%3C%3D4000&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff21.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+4001+AND+OBJECTID+%3C%3D4200&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff22.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+4201+AND+OBJECTID+%3C%3D4400&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff23.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+4401+AND+OBJECTID+%3C%3D4600&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff24.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+4601+AND+OBJECTID+%3C%3D4800&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff25.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+4801+AND+OBJECTID+%3C%3D5000&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff26.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+5001+AND+OBJECTID+%3C%3D5200&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff27.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+5201+AND+OBJECTID+%3C%3D5400&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff28.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+5401+AND+OBJECTID+%3C%3D5600&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff29.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+5601+AND+OBJECTID+%3C%3D5800&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff30.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+5801+AND+OBJECTID+%3C%3D6000&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff31.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+6001+AND+OBJECTID+%3C%3D6200&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
curl -o pc_runoff32.json 'http://180.94.71.13/arcgis/rest/services/PC/pc/MapServer/3/query?where=OBJECTID+%3E%3D+6201+AND+OBJECTID+%3C%3D6400&text=&objectIds=&time=&geometry=&geometryType=esriGeometryEnvelope&inSR=&spatialRel=esriSpatialRelIntersects&relationParam=&outFields=*&returnGeometry=true&maxAllowableOffset=&geometryPrecision=&outSR=&returnIdsOnly=false&returnCountOnly=false&orderByFields=&groupByFieldsForStatistics=&outStatistics=&returnZ=false&returnM=false&gdbVersion=&returnDistinctValues=false&f=pjson'
