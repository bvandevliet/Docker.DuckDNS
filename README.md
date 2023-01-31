# DuckDNS

A cronjob that runs every 5 minutes to keep your public IP address up-to-date with [DuckDNS](https://www.duckdns.org/).  

**GitHub**: https://github.com/bvandevliet/DuckDNS  
**DockerHub**: https://hub.docker.com/r/bvandevliet/duckdns  

## Install

**This image is intended to use on a Raspberry Pi 4, hence the tag since it's build with `--platform linux/arm64/v8`.**  
**If you wish to use it on a device with a different architecture, you could consider [making a build](#build) yourself.**  

1. Add the `duckdns` service to your `docker-compose.yml` file.  
1. `docker compose up -d`  

```
# docker-compose.yml

version: '3.6'

services:
  duckdns:
    container_name: duckdns
    image: bvandevliet/duckdns:linux-arm64-v8
    restart: unless-stopped
    environment:
      - TZ=Europe/Amsterdam
      - SUBDOMAINS=domain
      - TOKEN=xxx-xxx-xxx-xxx-xxx
```

## Build

Docker command to build the image from source.  
You may want to change the `--tag` and `--platform` values to meet your requirements.

```
docker image build --tag bvandevliet/duckdns:linux-arm64-v8 --platform linux/arm64/v8 --no-cache .
```