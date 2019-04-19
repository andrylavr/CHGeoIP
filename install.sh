#!/usr/bin/env bash
mkdir -p /opt/dictionaries
mkdir -p /etc/clickhouse-server
cp geoip_dictionary.xml /etc/clickhouse-server/geoip_dictionary.xml
cp GeoLite2-ASN-Blocks-IPv4.csv /opt/dictionaries/GeoLite2-ASN-Blocks-IPv4.csv
cp GeoLite2-Country-Blocks-IPv4.csv /opt/dictionaries/GeoLite2-Country-Blocks-IPv4.csv
cp GeoLite2-Country-Locations-en.csv /opt/dictionaries/GeoLite2-Country-Locations-en.csv