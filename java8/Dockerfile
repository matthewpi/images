#
# Copyright (c) 2020 Matthew Penner
#
# This repository is licensed under the MIT License.
# https://github.com/matthewpi/images/blob/master/LICENSE.md
#

FROM        ibmjava:8-jre-alpine

LABEL       author="Matthew Penner" maintainer="matthew@pterodactyl.io"

RUN         apk add --update --no-cache curl ca-certificates openssl git tar bash sqlite fontconfig tzdata \
			    && adduser -D -h /home/container container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
