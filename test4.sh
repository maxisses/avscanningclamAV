#!/bin/bash

echo "testing by scanning the eicar_com2.zip file.."

host=$(echo $REST_ENDPOINT)
port=$(echo $REST_PORT)

fo=$(curl -F "name=eicar_com2.zip" -F "file=@./testvirus-eicarcom2.zip" $host:$port/scan)

if [ "$fo" != "Everything ok : true" ]
  then
    [ -z "$fo" ] && echo "No File was provided"
    echo "not passed"
  else
    echo $fo
    echo "test passed"
fi
