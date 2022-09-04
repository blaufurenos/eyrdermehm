# trojan
A Trojan Service Base on Dockerize.

## Build Trojan image with single platform.
    docker build -t <imageName>:<TAG> -f trojan.dockerfile .

## Build Trojan image multi platform.
    docker buildx build -t <imageName>:<TAG> \
        --platform=linux/arm64,linux/amd64 . \
        -f Dockerfile \
        --push

## Test runing a container inspect.
    docker run -it \
        --rm \
        --name=trojan \
        echoer/trojan:1.16.0 trojan -v

## Boot up with Docker Compose.
    docker compose up -d

## In the end.