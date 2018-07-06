#!/bin/bash

cd /tmp

git reset --hard HEAD
git pull

if [ ! -f /tmp/lrbot06.json ]; then

cp lrbot06_sample.json lrbot06.json

fi

/usr/bin/python3 $1
