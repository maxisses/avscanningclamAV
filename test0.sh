#!/bin/bash

echo "testing by scanning the delfi_gtfs zip file file.."

host=$(echo $REST_ENDPOINT)
port=$(echo $REST_PORT)

fo=$(curl -F "name=delfi" -F "file=@./20201002_fahrplaene_gesamtdeutschland_gtfs.zip" $host:$port/scan)

if [ "$fo" != "Everything ok : true" ]
  then
    [ -z "$fo" ] && echo "No File was provided"
    echo "not passed"
  else
    echo $fo
    echo "test passed"
fi
