#
# Copyright (c) 2020 Matthew Penner
#
# This repository is licensed under the MIT License.
# https://github.com/matthewpi/images/blob/master/LICENSE.md
#

FROM        --platform=$BUILDPLATFORM alpine:latest

LABEL       author="Matthew Penner" maintainer="matthew@pterodactyl.io"

LABEL       org.opencontainers.image.source="https://github.com/matthewpi/images"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates c-ares icu-libs libssl1.1 libstdc++ libunwind musl-dbg tzdata v8 zlib \
				&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
