#!/bin/bash

nohup ./LYWSD03MMC.py -a --devicelistfile queti_sensors.ini --callback sendToInflux.sh >/dev/null 2>&1 &
