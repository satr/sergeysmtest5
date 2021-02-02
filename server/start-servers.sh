#!/bin/bash

for PORT in {32001..32005}
  do
    echo $PORT
    python3 -m http.server $PORT &
    echo "started ${PORT}";
done

python3 -m http.server 3000 &

while true
 do
   for PORT in {32001..32005}
    do
      echo "Get port ${PORT}"
      curl "http://localhost:${PORT}"
      sleep 1
    done
 done