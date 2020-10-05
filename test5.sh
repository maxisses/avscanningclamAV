#!/bin/bash

echo "testing by scanning the somedatex2 file.."

host=$(echo $REST_ENDPOINT)
port=$(echo $REST_PORT)

fo=$(curl -F "name=somedatex2" -F "file=@./somedatex2.xml" $host:$port/scan)

if [ "$fo" != "Everything ok : true" ]
  then
    [ -z "$fo" ] && echo "No File was provided"
    echo "not passed"
  else
    echo $fo
    echo "test passed"
fi
