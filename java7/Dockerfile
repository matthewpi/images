#
# Copyright (c) 2020 Matthew Penner
#
# This repository is licensed under the MIT License.
# https://github.com/matthewpi/images/blob/master/LICENSE.md
#

FROM        openjdk:7-jre-alpine

LABEL       author="Matthew Penner" maintainer="me@matthewp.io"

RUN         apk add --update --no-cache curl ca-certificates openssl git tar bash sqlite fontconfig tzdata \
			    && adduser -D -h /home/container container \
			    && ln -s /etc/localtime /etc/timezone

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
