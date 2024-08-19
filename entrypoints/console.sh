#!/bin/bash

export RUST_LOG=info
export RUST_BACKTRACE=1

/atm0s-media-server \
  --enable-private-ip \
  --http-port 8080 \
  --sdn-port 10000 \
  --sdn-zone-id 0 \
  --sdn-zone-node-id 0 \
  --workers 2 \
  console
