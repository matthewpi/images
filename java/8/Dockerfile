#
# Copyright (c) 2023 Matthew Penner
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
FROM		--platform=$TARGETOS/$TARGETARCH registry.access.redhat.com/ubi8/ubi-minimal:latest

RUN			microdnf install ca-certificates gzip openssl tar wget \
				&& microdnf update \
				&& microdnf clean all

ENV			JAVA_VERSION=8.0.6.36

RUN			set -eux; \
				microdnf -y install shadow-utils; \
				useradd -u 1001 -r -g 0 -s /usr/sbin/nologin default; \
				ARCH="$(uname -m)"; \
				case "${ARCH}" in \
					amd64|x86_64) \
						ESUM='d0198a37b63810174dc972eb06976e3e761efb21524c1fa3f9f1ed1246f3a9e3'; \
						YML_FILE='8.0/jre/linux/x86_64/index.yml'; \
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

ENV			IBM_JAVA_OPTIONS="-XX:+UseContainerSupport"
ENV			JAVA_HOME=/opt/ibm/java/jre
ENV			PATH=/opt/ibm/java/jre/bin:$PATH

# ---------------------------------------------------------------- #

LABEL		author="Matthew Penner" maintainer="matthew@pterodactyl.io"

LABEL		org.opencontainers.image.source="https://github.com/matthewpi/images"
LABEL		org.opencontainers.image.licenses=MIT

RUN			microdnf install fontconfig glibc-langpack-en iproute openssl sqlite tar \
				&& microdnf update \
				&& microdnf install shadow-utils \
				&& adduser --home-dir /home/container container \
				&& microdnf remove shadow-utils \
				&& microdnf clean all \
				&& sed -i 's/^LANG=.*/LANG="en_US.utf8"/' /etc/locale.conf

ENV			LANG=en_US.UTF-8
ENV			LANGUAGE=en_US:en
ENV			LC_ALL=en_US.UTF-8

USER		container
ENV			USER=container HOME=/home/container
WORKDIR		/home/container

COPY		./entrypoint.sh /entrypoint.sh
CMD			[ "/bin/bash", "/entrypoint.sh" ]
