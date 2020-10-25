#
# Copyright (c) 2020 Matthew Penner
#
# This repository is licensed under the MIT License.
# https://github.com/matthewpi/images/blob/master/LICENSE.md
#

FROM        alpine:latest

LABEL       author="Matthew Penner" maintainer="matthew@pterodactyl.io"

RUN         apk add --update --no-cache ca-certificates tzdata \
				&& adduser -D -h /home/container container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
