FROM rust:1.79.0 as base
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    pkg-config \
    curl \
    libsoxr-dev \
    libsoxr0 \
    cmake
WORKDIR /app
COPY . .

RUN cargo build --release

FROM ubuntu:22.04

# install wget & curl
RUN apt update && apt install -y wget curl libsoxr0 && apt clean && rm -rf /var/lib/apt/lists/*

COPY maxminddb-data /maxminddb-data
COPY --from=base /app/target/release/atm0s-media-server /atm0s-media-server

ENTRYPOINT ["/atm0s-media-server"]
