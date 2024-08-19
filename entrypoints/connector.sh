#!/bin/bash

export RUST_LOG=info
export RUST_BACKTRACE=1
# export GATEWAY_IP=$(getent hosts gateway | awk '{ print $1 }')
export GATEWAY_IP=127.0.0.1

/atm0s-media-server \
    --sdn-zone-id 0 \
    --sdn-zone-node-id 4 \
    --seeds 1@/ip4/$GATEWAY_IP/udp/10001 \
    connector \
    --s3-uri "http://minioadmin:minioadmin@127.0.0.1:9000/record"
