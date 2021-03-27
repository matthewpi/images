# Images
This repository contains a bunch of images designed for use with Pterodactyl's egg system.  Each image is rebuilt
periodically to ensure dependencies are always up-to-date.

Images are hosted on both `ghcr.io` and `quay.io` for redundancy.

To use any of these images, use `ghcr.io/matthewpi/images:<IMAGE>` or `quay.io/matthewp/pterodactyl:<IMAGE>`.

Any images ending with `-install` should only be used as a install image for running an install script, these images
will not work to run the actual server and are only designed to reduce installation time and network usage by
pre-installing common installation dependencies such as `curl` and `wget`.

All of these images are available for `linux/amd64` and `linux/arm64` versions, unless otherwise specified, to use
these images on an arm system, no modification to them or the tag is needed, they should just work.

## Available Images
- [`alpine`](https://github.com/matthewpi/images/tree/master/alpine)
  - `ghcr.io/matthewpi/images:alpine`
  - `quay.io/matthewp/pterodactyl:alpine`
- [`fivem`](https://github.com/matthewpi/images/tree/master/fivem)
  - `ghcr.io/matthewpi/images:fivem`
  - `quay.io/matthewp/pterodactyl:fivem`
- [`go1.14`](https://github.com/matthewpi/images/tree/master/go1.14)
  - `ghcr.io/matthewpi/images:go1.14`
  - `quay.io/matthewp/pterodactyl:go1.14`
- [`go1.15`](https://github.com/matthewpi/images/tree/master/go1.15)
  - `ghcr.io/matthewpi/images:go1.15`
  - `quay.io/matthewp/pterodactyl:go1.15`
- [`go1.16`](https://github.com/matthewpi/images/tree/master/go1.16)
  - `ghcr.io/matthewpi/images:go1.16`
  - `quay.io/matthewp/pterodactyl:go1.16`
- [`java7`](https://github.com/matthewpi/images/tree/master/java7)
  - `ghcr.io/matthewpi/images:java7`
  - `quay.io/matthewp/pterodactyl:java7`
- [`java8`](https://github.com/matthewpi/images/tree/master/java8)
  - `ghcr.io/matthewpi/images:java8`
  - `quay.io/matthewp/pterodactyl:java8`
- [`java9`](https://github.com/matthewpi/images/tree/master/java9)
  - `ghcr.io/matthewpi/images:java9`
  - `quay.io/matthewp/pterodactyl:java9`
- [`java10`](https://github.com/matthewpi/images/tree/master/java10)
  - `ghcr.io/matthewpi/images:java10`
  - `quay.io/matthewp/pterodactyl:java10`
- [`java11`](https://github.com/matthewpi/images/tree/master/java11)
  - `ghcr.io/matthewpi/images:java11`
  - `quay.io/matthewp/pterodactyl:java11`
- [`java12`](https://github.com/matthewpi/images/tree/master/java12)
  - `ghcr.io/matthewpi/images:java12`
  - `quay.io/matthewp/pterodactyl:java12`
- [`java13`](https://github.com/matthewpi/images/tree/master/java13)
  - `ghcr.io/matthewpi/images:java13`
  - `quay.io/matthewp/pterodactyl:java13`
- [`java14`](https://github.com/matthewpi/images/tree/master/java14)
  - `ghcr.io/matthewpi/images:java14`
  - `quay.io/matthewp/pterodactyl:java14`
- [`java15`](https://github.com/matthewpi/images/tree/master/java15)
  - `ghcr.io/matthewpi/images:java15`
  - `quay.io/matthewp/pterodactyl:java15`
- [`java16`](https://github.com/matthewpi/images/tree/master/java16)
  - `ghcr.io/matthewpi/images:java16`
  - `quay.io/matthewp/pterodactyl:java16`
- [`source`](https://github.com/matthewpi/images/tree/master/source)
  - `ghcr.io/matthewpi/images:source`
  - `quay.io/matthewp/pterodactyl:source`

### Installation Images
- [`alpine-install`](https://github.com/matthewpi/images/tree/master/alpine-install)
  - `ghcr.io/matthewpi/images:alpine-install`
  - `quay.io/matthewp/pterodactyl:alpine-install`
- [`source-install`](https://github.com/matthewpi/images/tree/master/source-install)
  - `ghcr.io/matthewpi/images:source-install`
  - `quay.io/matthewp/pterodactyl:source-install`
