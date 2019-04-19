# ClickHouse GeoIP
## How to install
run `sh install.sh`

## How to use
Get `country_iso_code` by IPv4
```clickhouse
SELECT dictGetString('geoip_locations', 'country_iso_code', tuple(dictGetUInt64('geoip_blocks', 'geoname_id', tuple(IPv4StringToNum('8.8.8.8'))))) as geo;
```