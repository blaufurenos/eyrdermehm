FROM alpine:3.16

ARG VERSION=v1.16.0

RUN apk add --no-cache --virtual .build-deps \
        build-base \
        git \
        cmake \
        boost-dev \
        openssl-dev \
        mariadb-connector-c-dev \
    && git clone --branch=${VERSION} https://github.com/trojan-gfw/trojan $HOME/trojan \
    && (cd $HOME/trojan && cmake . && make -j $(nproc) && strip -s trojan \
    && mv trojan /usr/local/bin) \
    && rm -rf $HOME/trojan \
    && apk del .build-deps \
    && apk add --no-cache --virtual .trojan-rundeps \
        libstdc++ \
        boost-system \
        boost-program_options \
        mariadb-connector-c

WORKDIR /config
CMD ["/bin/sh", "/wait_for_caddy.sh", "trojan", "config.json"]