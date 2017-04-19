#!/bin/bash

NUM=$(sh ./get_infected_num.sh)
if [ ${NUM} = '0' ]; then
  sh ./notify.sh
fi
