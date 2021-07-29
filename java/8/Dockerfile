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

# https://github.com/ibmruntimes/ci.docker/blob/master/ibmjava/8/jre/ubi-min/Dockerfile
FROM        --platform=$BUILDPLATFORM redhat/ubi8-minimal:latest

RUN         microdnf install ca-certificates gzip openssl tar wget \
				&& microdnf update; microdnf clean all

ENV         JAVA_VERSION=1.8.0_sr6fp31

RUN         set -eux; \
				microdnf -y install shadow-utils; \
				useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default; \
				ARCH="$(uname -m)"; \
				case "${ARCH}" in \
					amd64|x86_64) \
						ESUM='ed09900a0219b40ddfa06098118a701b8633dcf12588e13ff8b7d810ef2769dc'; \
						YML_FILE='jre/linux/x86_64/index.yml'; \
					;; \
					*) \
						echo "Unsupported arch: ${ARCH}"; \
						exit 1; \
						;; \
				esac; \
				BASE_URL="https://public.dhe.ibm.com/ibmdl/export/pub/systems/cloud/runtimes/java/meta/"; \
				wget -q -U UA_IBM_JAVA_Docker -O /tmp/index.yml ${BASE_URL}/${YML_FILE}; \
				JAVA_URL=$(sed -n '/^'${JAVA_VERSION}:'/{n;s/\s*uri:\s//p}'< /tmp/index.yml); \
				wget -q -U UA_IBM_JAVA_Docker -O /tmp/ibm-java.bin ${JAVA_URL}; \
				echo "${ESUM}  /tmp/ibm-java.bin" | sha256sum -c -; \
				echo "INSTALLER_UI=silent" > /tmp/response.properties; \
				echo "USER_INSTALL_DIR=/opt/ibm/java" >> /tmp/response.properties; \
				echo "LICENSE_ACCEPTED=TRUE" >> /tmp/response.properties; \
				mkdir -p /opt/ibm; \
				chmod +x /tmp/ibm-java.bin; \
				/tmp/ibm-java.bin -i silent -f /tmp/response.properties; \
				rm -f /tmp/response.properties; \
				rm -f /tmp/index.yml; \
				mkdir -p /licenses; \
				cp /opt/ibm/java/license_en.txt /licenses; \
				chown -R 1001:0 /opt/ibm/java; \
				microdnf -y remove shadow-utils; \
				microdnf clean all; \
				rm -f /tmp/ibm-java.bin;

ENV         IBM_JAVA_OPTIONS="-XX:+UseContainerSupport"
ENV         JAVA_HOME=/opt/ibm/java/jre
ENV         PATH=/opt/ibm/java/jre/bin:$PATH

# ---------------------------------------------------------------- #

LABEL       author="Matthew Penner" maintainer="matthew@pterodactyl.io"

LABEL       org.opencontainers.image.source="https://github.com/matthewpi/images"
LABEL       org.opencontainers.image.licenses=MIT

RUN         microdnf install ca-certificates fontconfig git openssl sqlite tar tzdata \
				&& microdnf update; microdnf clean all \
				&& adduser --home-dir /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
