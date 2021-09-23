#
# Copyright (c) 2021 Matthew Penner
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#

FROM        --platform=$TARGETOS/$TARGETARCH debian:stable-slim

LABEL       author="Matthew Penner" maintainer="matthew@pterodactyl.io"

LABEL       org.opencontainers.image.source="https://github.com/matthewpi/images"
LABEL       org.opencontainers.image.licenses=MIT

ENV         DEBIAN_FRONTEND=noninteractive

RUN         dpkg --add-architecture i386 \
				&& apt update \
				&& apt upgrade -y \
				&& apt install -y gnupg wget \
				&& wget -q https://dl.winehq.org/wine-builds/winehq.key -O- | apt-key add - \
				&& echo "deb https://dl.winehq.org/wine-builds/debian/ buster main" >> /etc/apt/sources.list \
				&& apt update \
				&& apt install -y curl g++ gcc gdb iproute2 lib32gcc1 lib32stdc++6 lib32tinfo6 lib32z1 libcurl3-gnutls:i386 libcurl4-gnutls-dev:i386 libcurl4:i386 libfontconfig libgcc1 libncurses5:i386 libncurses6:i386 libntlm0 libsdl1.2debian libsdl2-2.0-0:i386 libssl1.1:i386 libtinfo6:i386 net-tools netcat python3 tar telnet tzdata winbind xauth xvfb \
				&& wget -nc https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/amd64/libfaudio0_20.01-0~buster_amd64.deb \
				&& wget -nc https://download.opensuse.org/repositories/Emulators:/Wine:/Debian/Debian_10/i386/libfaudio0_20.01-0~buster_i386.deb \
				&& apt install -y ./libfaudio0_20.01-0~buster_* \
				&& apt install -y --install-recommends cabextract winehq-stable \
				&& useradd -m -d /home/container container \
				&& rm -rf /libfaudio0_20.01-0~buster_amd64.deb /libfaudio0_20.01-0~buster_i386.deb /var/lib/apt/lists/*

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
