#!/bin/bash

export RUST_LOG=info
export RUST_BACKTRACE=1
# export GATEWAY_IP=$(getent hosts gateway | awk '{ print $1 }')
export GATEWAY_IP=127.0.0.1

if [ "$#" -lt 1 ]; then
    echo "Error: Missing argument. Usage: $0 <node_id> "
    exit 1
fi

/atm0s-media-server \
    --enable-private-ip \
    --sdn-zone-id 0 \
    --sdn-zone-node-id $1 \
    --seeds 1@/ip4/$GATEWAY_IP/udp/10001 \
    --workers 2 \
    media \
    --enable-token-api
