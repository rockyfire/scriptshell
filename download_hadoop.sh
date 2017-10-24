#!/bin/bash 
for i in {1901..2017} 
do     
	cd /linuxtext/isd-lite     
	if [ -d $i ]; then         
		continue     
	fi     
	wget -r -np -nH --cut-dirs=4 -R index.html ftp://ftp.ncdc.noaa.gov/pub/data/noaa/isd-lite/$i/     
	cd $i     
	gzip -d *.gz 
done
