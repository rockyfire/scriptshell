######################################
# Author : rockyfire
# !/bin/bash

for i in {1901..2016}
do
	cd /linuxtext
	wget -r -np -nH --cut-dirs=3 -R index.html ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-lite/$i/
	cd isd-lite/$i
	gzip -d *.gz
done
