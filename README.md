# DuckDNS

A cronjob that runs every 5 minutes to keep your public IP address up-to-date with [DuckDNS](https://www.duckdns.org/).  

**DockerHub**: https://hub.docker.com/r/bvandevliet/duckdns  

## Install

1. Add the `duckdns` service to your `docker-compose.yml` file.  
1. `docker compose up -d`  

```
# docker-compose.yml

services:
  duckdns:
    container_name: duckdns
    image: bvandevliet/duckdns:latest
    restart: unless-stopped
    environment:
      - TZ=Europe/Amsterdam
      - DOMAINS=domain
      - TOKEN=xxx-xxx-xxx-xxx-xxx
```