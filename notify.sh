#!/bin/bash

HOSTNAME=$(hostname)
INCOMING=$(cat slack_url.txt)
TEXT='"At '"${HOSTNAME}"', clamAV found INFECTED FILES."'
curl -X POST --data-urlencode \
  'payload={"channel": "@hidetomo", "username": "notification-bot", "text": '"${TEXT}"'}' \
  ${INCOMING}
