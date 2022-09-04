# trojan
A Trojan service based on dockerize.

## Build trojan image with single platform.
    docker build -t <imageName>:<TAG> -f trojan.Dockerfile .

## Build trojan image multi platform(for example:linux/arm64,linux/amd64).
    docker buildx build -t <imageName>:<TAG> \
        --platform=linux/arm64,linux/amd64 . \
        -f trojan.Dockerfile \
        --push

## Test runing a container inspect.
    docker run -it \
        --rm \
        --name=trojan \
        echoer/trojan:1.16.0 trojan -v

## Boot up with Docker Compose.
    docker compose up -d

## In the end.