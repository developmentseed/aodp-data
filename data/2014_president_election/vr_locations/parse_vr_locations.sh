#! /bin/bash
rm -f locations.csv 
rm -f vr-locations.txt
rm -f vr-locations.geojson
pdftotext -layout vr-locations.pdf

echo 'no;no_prov;district;prov;prov_id;vrc_code;vrc_name;location;lat;lon' > vr-locations.csv

cat vr-locations.txt | 
sed -E 's/No.*//g' | 
sed -E 's/\([ ]+\)//g' |
sed -E 's/[ ]{4,}\)//' |
sed -E 's/[ ]{4,}\,//' |
sed -E 's/\"[ ]+\"//g' |
sed -E 's/[ ]{3,}\"//' |
sed -E 's/([0-9]{1,2}\.[0-9]{3,})/    \1    /g' |
sed -E 's/[0-9]{1,2}[ ]{1,}Capital/Capital/g' |
sed -E 's/[0-9]{1,2}[ ]{1,}Province/Province/g' |
sed -E 's/Sar   e   Pul/Sar e Pul/g' |
sed -E 's/Kabul[ ]+([0-9]{1,2})/    Kabul    \1/g' |
sed -E 's/Kapisa[ ]+([0-9]{1,2})/    Kapisa    \1/g' |
sed -E 's/Parwan[ ]+([0-9]{1,2})/    Parwan    \1/g' |
sed -E 's/Wardak[ ]+([0-9]{1,2})/    Wardak    \1/g' |
sed -E 's/Logar[ ]+([0-9]{1,2})/    Logar    \1/g' |
sed -E 's/Nangarhar[ ]+([0-9]{1,2})/    Nangarhar    \1/g' |
sed -E 's/Laghman[ ]+([0-9]{1,2})/    Laghman    \1/g' |
sed -E 's/Panjsher[ ]+([0-9]{1,2})/    Panjsher    \1/g' |
sed -E 's/Baghlan[ ]+([0-9]{1,2})/    Baghlan    \1/g' |
sed -E 's/Bamyan[ ]+([0-9]{1,2})/    Bamyan    \1/g' |
sed -E 's/Ghazni[ ]+([0-9]{1,2})/    Ghazni    \1/g' |
sed -E 's/Paktya[ ]+([0-9]{1,2})/    Paktya    \1/g' |
sed -E 's/Kunar[ ]+([0-9]{1,2})/    Kunar    \1/g' |
sed -E 's/Nuristan[ ]+([0-9]{1,2})/    Nuristan    \1/g' |
sed -E 's/Badakhshan[ ]+([0-9]{1,2})/    Badakhshan    \1/g' |
sed -E 's/Takhar[ ]+([0-9]{1,2})/    Takhar    \1/g' |
sed -E 's/Kunduz[ ]+([0-9]{1,2})/    Kunduz    \1/g' |
sed -E 's/Balkh[ ]+([0-9]{1,2})/    Balkh    \1/g' |
sed -E 's/Samangan[ ]+([0-9]{1,2})/    Samangan    \1/g' |
sed -E 's/Sar e Pul[ ]+([0-9]{1,2})/    Sar e Pul    \1/g' |
sed -E 's/Ghor[ ]+([0-9]{1,2})/    Ghor    \1/g' |
sed -E 's/Daykundi[ ]+([0-9]{1,2})/    Daykundi    \1/g' |
sed -E 's/Uruzgan[ ]+([0-9]{1,2})/    Uruzgan    \1/g' |
sed -E 's/Zabul[ ]+([0-9]{1,2})/    Zabul    \1/g' |
sed -E 's/Paktika[ ]+([0-9]{1,2})/    Paktika    \1/g' |
sed -E 's/Khost[ ]+([0-9]{1,2})/    Khost    \1/g' |
sed -E 's/Jawzjan[ ]+([0-9]{1,2})/    Jawzjan    \1/g' |
sed -E 's/Faryab[ ]+([0-9]{1,2})/    Faryab    \1/g' |
sed -E 's/Badghis[ ]+([0-9]{1,2})/    Badghis    \1/g' |
sed -E 's/Hirat[ ]+([0-9]{1,2})/    Hirat    \1/g' |
sed -E 's/Farah[ ]+([0-9]{1,2})/    Farah    \1/g' |
sed -E 's/Hilmand[ ]+([0-9]{1,2})/    Hilmand    \1/g' |
sed -E 's/Kandahar[ ]+([0-9]{1,2})/    Kandahar    \1/g' |
sed -E 's/Nimroz[ ]+([0-9]{1,2})/    Nimroz    \1/g' |
sed -E 's/[ ]{3,}/;/g' |
sed '/^$/d' >> vr-locations.csv

cat vr-locations.csv | awk -F';' '$9!=""' >> locations.csv
ogr2ogr -f "GeoJSON" locations.geojson vr-locations.vrt
mv locations.geojson vr-locations.geojson
rm -f locations.csv 
