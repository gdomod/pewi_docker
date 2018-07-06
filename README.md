# Dockerfile for LRBOT

## INFO
On every startup the bot get the last update

## REQUIREMENTS
### INSTALL docker on running host
  ```apt-get install docker.io```


### create your config dir
  ```mkdir -p /config/pewi```

  
## START THE ENGINE
  ### FOR CONSOLE OUTPUT
  For Bot u can use
  
  `docker run --name bot -v /config/pewi:/etc/pewi -it pewi bot06.py`
  
  For Backtest
  
  `docker run --name backtest -v /config/pewi:/etc/pewi -it pewi backtest.py`
  
  ### If runs fine, u can start with daemon
  
  `docker run -d --name bot -v /config/pewi:/etc/pewi -it pewi bot06.py`

## FAQ
  Something goes wrong
  just backup your conf files lrbot.secrets.js and lrbot06.json 
  and delete your docker container - `docker rm bot`
  
  Debug your daemon machine with
  `docker logs <container> -f --tail 200`
  
  
  
