import csv
import json

reader = csv.DictReader(open("GeoLite2-Country-Locations-en.csv"))
writer = open('GeoLite2-Country-Locations-en.json', 'w')
for row in reader:
	try:
		row = {'geoname_id': int(row['geoname_id']), 'country_iso_code': row['country_iso_code']}
		row = json.dumps(row)
		writer.write(row + '\n')
	except:
		print('error1: ')

reader = csv.DictReader(open("GeoLite2-Country-Blocks-IPv4.csv"))
writer = open('GeoLite2-Country-Blocks-IPv4.json', 'w')
for row in reader:
	try:
		row = {'geoname_id': row['geoname_id'], 'network': row['network']}
		row = json.dumps(row)
		writer.write(row + '\n')
	except:
		print('error2: ')