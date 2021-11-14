# Images

This repository contains a bunch of images designed for use with Pterodactyl's egg system.  Each image is rebuilt
periodically to ensure dependencies are always up-to-date.

Images are hosted on both `ghcr.io` and `quay.io` for redundancy.

To use any of these images, use `ghcr.io/matthewpi/images:<IMAGE>` or `quay.io/matthewp/pterodactyl:<IMAGE>`.

Any images ending with `-install` should only be used as a install image for running an install script, these images
will not work to run the actual server and are only designed to reduce installation time and network usage by
pre-installing common installation dependencies such as `curl` and `wget`.

## Available Images

### Games

- [`source`](https://github.com/matthewpi/images/tree/master/games/source)
  - Image specifically designed for running Source Engine servers.
  - Tags
    - `ghcr.io/matthewpi/images:source`
    - `quay.io/matthewp/pterodactyl:source`
  - Supported Architectures
    - `linux/amd64`

### Generic

- [`alpine`](https://github.com/matthewpi/images/tree/master/generic/alpine)
  - Generic [Alpine](https://alpinelinux.org) Linux image
  - Tags
    - `ghcr.io/matthewpi/images:alpine`
    - `quay.io/matthewp/pterodactyl:alpine`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`debian`](https://github.com/matthewpi/images/tree/master/generic/debian)
  - Generic [Debian](https://www.debian.org/) image
  - Tags
    - `ghcr.io/matthewpi/images:debian`
    - `quay.io/matthewp/pterodactyl:debian`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`ubi`](https://github.com/matthewpi/images/tree/master/generic/ubi)
  - Generic [RedHat UBI](https://developers.redhat.com/products/rhel/ubi) image
  - Tags
    - `ghcr.io/matthewpi/images:ubi`
    - `quay.io/matthewp/pterodactyl:ubi`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`

### Golang

- [`go1.15`](https://github.com/matthewpi/images/tree/master/go/1.15)
  - Tags
    - `ghcr.io/matthewpi/images:go1.15`
    - `quay.io/matthewp/pterodactyl:go1.15`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`go1.16`](https://github.com/matthewpi/images/tree/master/go/1.16)
  - Tags
    - `ghcr.io/matthewpi/images:go1.16`
    - `quay.io/matthewp/pterodactyl:go1.16`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`go1.17`](https://github.com/matthewpi/images/tree/master/go/1.17)
  - Tags
    - `ghcr.io/matthewpi/images:go1.17`
    - `quay.io/matthewp/pterodactyl:go1.17`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`

### Java

#### Java 8

- [`java8`](https://github.com/matthewpi/images/tree/master/java/8)
  - Tags
    - `ghcr.io/matthewpi/images:java8`
    - `quay.io/matthewp/pterodactyl:java8`
  - Supported Architectures
    - `linux/amd64`

#### Java 11

- [`java11-hotspot`](https://github.com/matthewpi/images/tree/master/java/11-hotspot)
  - Tags
    - `ghcr.io/matthewpi/images:java11-hotspot`
    - `quay.io/matthewp/pterodactyl:java11-hotspot`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`java11-zulu`](https://github.com/matthewpi/images/tree/master/java/11-zulu)
  - Tags
    - `ghcr.io/matthewpi/images:java11-zulu`
    - `quay.io/matthewp/pterodactyl:java11-zulu`
  - Supported Architectures
    - `linux/amd64`

#### Java 16

- [`java16-hotspot`](https://github.com/matthewpi/images/tree/master/java/16-hotspot)
  - Tags
    - `ghcr.io/matthewpi/images:java16-hotspot`
    - `quay.io/matthewp/pterodactyl:java16-hotspot`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`java16-zulu`](https://github.com/matthewpi/images/tree/master/java/16-zulu)
  - Tags
    - `ghcr.io/matthewpi/images:java16-zulu`
    - `quay.io/matthewp/pterodactyl:java16-zulu`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`

#### Java 17

- [`java17-zulu`](https://github.com/matthewpi/images/tree/master/java/17-zulu)
  - Tags
    - `ghcr.io/matthewpi/images:java17-zulu`
    - `quay.io/matthewp/pterodactyl:java17-zulu`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`

### Node.js

- [`node14`](https://github.com/matthewpi/images/tree/master/node/14)
  - <https://catalog.redhat.com/software/containers/ubi8/nodejs-14/5ed7887dd70cc50e69c2fabb>
  - Tags
    - `ghcr.io/matthewpi/images:node14`
    - `quay.io/matthewp/pterodactyl:node14`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
  - End of life: `April 2023`
- `node16`
  - Waiting on official ubi8 image from Red Hat.

### Python

- [`python3.7`](https://github.com/matthewpi/images/tree/master/python/3.7)
  - Tags
    - `ghcr.io/matthewpi/images:python3.7`
    - `quay.io/matthewp/pterodactyl:python3.7`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`python3.8`](https://github.com/matthewpi/images/tree/master/python/3.8)
  - Tags
    - `ghcr.io/matthewpi/images:python3.8`
    - `quay.io/matthewp/pterodactyl:python3.8`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`python3.9`](https://github.com/matthewpi/images/tree/master/python/3.9)
  - Tags
    - `ghcr.io/matthewpi/images:python3.9`
    - `quay.io/matthewp/pterodactyl:python3.9`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`python3.10`](https://github.com/matthewpi/images/tree/master/python/3.10)
  - Tags
    - `ghcr.io/matthewpi/images:python3.10`
    - `quay.io/matthewp/pterodactyl:python3.10`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`

### Installers

- [`alpine-install`](https://github.com/matthewpi/images/tree/master/installers/alpine)
  - Tags
    - `ghcr.io/matthewpi/images:alpine-install`
    - `quay.io/matthewp/pterodactyl:alpine-install`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`debian-install`](https://github.com/matthewpi/images/tree/master/installers/debian)
  - Tags
    - `ghcr.io/matthewpi/images:debian-install`
    - `quay.io/matthewp/pterodactyl:debian-install`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`source-install`](https://github.com/matthewpi/images/tree/master/installers/source)
  - Tags
    - `ghcr.io/matthewpi/images:source-install`
    - `quay.io/matthewp/pterodactyl:source-install`
  - Supported Architectures
    - `linux/amd64`
- [`ubi-install`](https://github.com/matthewpi/images/tree/master/installers/ubi)
  - Tags
    - `ghcr.io/matthewpi/images:ubi-install`
    - `quay.io/matthewp/pterodactyl:ubi-install`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
