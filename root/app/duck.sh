#!/bin/sh

RESPONSE=$(curl -k -sS --max-time 60 "https://www.duckdns.org/update?domains=${SUBDOMAINS}&token=${TOKEN}&ip=")

if [ "${RESPONSE}" = "OK" ]; then
  echo -e "$(date):\nThe response returned was: ${RESPONSE}.\nIP updated."
else
  echo -e "$(date):\nThe response returned was: ${RESPONSE}.\nSomething went wrong!"
fi