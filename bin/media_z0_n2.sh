RUST_LOG=info \
RUST_BACKTRACE=1 \
cargo run -- \
    --http-port 3002 \
    --node-id 2 \
    --sdn-port 10002 \
    --sdn-zone 0 \
    --seeds 0@/ip4/127.0.0.1/udp/10000/ip4/192.168.0.108/udp/10000/ip4/172.17.0.1/udp/10000 \
    --secret insecure \
    media \
        --allow-private-ip \
        --enable-token-api
