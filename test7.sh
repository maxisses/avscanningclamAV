#!/bin/bash

echo "testing by scanning the random tar.gz file file.."

host=$(echo $REST_ENDPOINT)
port=$(echo $REST_PORT)

fo=$(curl -F "name=random tar.gz file" -F "file=@./helm-v3.3.0-linux-amd64.tar.gz" $host:$port/scan)

if [ "$fo" != "Everything ok : true" ]
  then
    [ -z "$fo" ] && echo "No File was provided"
    echo "not passed"
  else
    echo $fo
    echo "test passed"
fi
