# Dockerfile for LRBOT

## INFO
On every startup the bot get the last update

## REQUIREMENTS
INSTALL docker on running host
for ubuntu 
  apt-get install docker.io

## START THE ENGINE
  ### FOR CONSOLE OUTPUT
  For Bot u can use
  docker run --name bot -v /config/pewi:/etc/pewi -it pewi bot06.py
  
  For Backtest
  docker run --name backtest -v /config/pewi:/etc/pewi -it pewi backtest.py
  ### IF RUNS FINE , U CAN START AS DAEMON WITH
  docker run -d --name bot -v /config/pewi:/etc/pewi -it pewi bot06.py

## FAQ
  Something goes wrong
  just backup your conf files lrbot.secrets.js and lrbot06.json 
  and delete your docker container - docker rm bot
  
