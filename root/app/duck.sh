#!/bin/sh

RESPONSE=$(curl -sS --max-time 30 "https://www.duckdns.org/update?domains=${DOMAINS}&token=${TOKEN}&ip=")

if [ ${RESPONSE} = "OK" ]; then
  echo -e "\n$(date): Domain(s) ${DOMAINS} updated."
else
  echo -e "\n$(date): Something went wrong! DuckDNS responded: ${RESPONSE}"
fi