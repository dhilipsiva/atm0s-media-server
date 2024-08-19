#!/bin/bash

export RUST_LOG=info
export RUST_BACKTRACE=1
# export CONSOLE_IP=$(getent hosts console | awk '{ print $1 }')
export CONSOLE_IP=127.0.0.1

/atm0s-media-server \
    --enable-private-ip \
    --http-port 3000 \
    --sdn-port 10001 \
    --sdn-zone-id 0 \
    --sdn-zone-node-id 1 \
    --seeds 0@/ip4/$CONSOLE_IP/udp/10000 \
    --workers 2 \
    gateway \
    --lat 10 \
    --lon 20 \
    --max-memory 100 \
    --max-disk 100 \
    --geo-db "/maxminddb-data/GeoLite2-City.mmdb"
