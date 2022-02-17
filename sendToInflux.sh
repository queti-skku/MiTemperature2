#!/bin/bash

#use e.g with that script: MySensor.sh
#!/bin/bash
#DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
#$DIR/LYWSD03MMC.py -d <device> -2p -p2 75 -o2 -4 -p1 33 -o1 -6 -r --debounce --skipidentical 50 --name MySensor --callback sendToInflux.sh


curl -i -XPOST http://localhost:8086/write?db=newtempdata\&precision=s --data-binary "QuetiBluetoothSensors,sensorname=$2 temperature=$3,calibratedHumidity=$4,voltage=$5 $6"
