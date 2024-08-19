FROM ghcr.io/dhilipsiva/atm0s-media-server:master
COPY entrypoints /entrypoints
ENTRYPOINT ["/atm0s-media-server"]
