#!/bin/bash

cd /tmp
rm /tmp/lrbot06.json 2>/dev/null
rm /tmp/lrbot.secrets.js 2>/dev/null
cp /etc/pewi/lrbot06.json /tmp/ 2>/dev/null
cp /etc/pewi/lrbot.secrets.js /tmp/ 2>/dev/null


git pull

if [ ! -f /tmp/lrbot06.json ]; then
	cp lrbot06_sample.json /etc/pewi/lrbot06.json
	cp lrbot06_sample.json lrbot06.json
        touch /etc/pewi/lrbot.secrets.js
	cp /etc/pewi/lrbot.secrets.js /tmp/
fi

/usr/bin/python3 $1
