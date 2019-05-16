#!/usr/bin/env bash

wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-ASN-CSV.zip -O GeoLite2-ASN-CSV.zip
wget http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country-CSV.zip -O GeoLite2-Country-CSV.zip

unzip -p GeoLite2-ASN-CSV.zip GeoLite2-ASN-CSV_*/GeoLite2-ASN-Blocks-IPv4.csv > GeoLite2-ASN-Blocks-IPv4.csv
unzip -p GeoLite2-Country-CSV.zip GeoLite2-Country-CSV_*/GeoLite2-Country-Blocks-IPv4.csv > GeoLite2-Country-Blocks-IPv4.csv
unzip -p GeoLite2-Country-CSV.zip GeoLite2-Country-CSV_*/GeoLite2-Country-Locations-en.csv > GeoLite2-Country-Locations-en.csv

python csvfix.py

rm -f GeoLite2-ASN-CSV.zip
rm -f GeoLite2-Country-CSV.zip
rm -f GeoLite2-Country-Blocks-IPv4.csv
rm -f GeoLite2-Country-Locations-en.csv