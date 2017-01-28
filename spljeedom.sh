#!/bin/sh
folder=$1
duration=$2
hw=$3
while true; do 
    arecord -q -D $hw -f cd -d $duration -t raw $folder/noise.wav
    amplitude=$(lame -r $folder/noise.wav 2>&1 | sed -n '/+/,/db/p' | sed 's/\ReplayGain: +//' | sed 's/\dB//' | sed -n 1p)
    amplitude=$(echo "scale=2; $amplitude * -1" | bc -l)
    curl -s -d "renseigner ici votre clef api jeedom&type=httpRemoteEvent&eqId=189&param2842=$amplitude" http://votre ip jeedom/core/api/jeeApi.php >/dev/null 2>&1
done
