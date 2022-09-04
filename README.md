# trojan
A Trojan Service Base on Dockerize.

## Build Trojan image with single platform.
    docker build -t <imageName>:<TAG> -f trojan.dockerfile .

## Build Trojan image multi platform.
    docker buildx build -t <imageName>:<TAG> \
       --platform=linux/arm64,linux/amd64 . \
       -f Dockerfile \
       --push

## Boot up with Docker Compose.
    docker compose up -d

## In the end.