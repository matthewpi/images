# Images

This repository contains a bunch of images designed for use with Pterodactyl's egg system.  Each image is rebuilt
periodically to ensure dependencies are always up-to-date.

Images are hosted on both `ghcr.io` and `quay.io` for redundancy.

To use any of these images, use `ghcr.io/matthewpi/images:<IMAGE>` or `quay.io/matthewp/pterodactyl:<IMAGE>`.

Any images ending with `-install` should only be used as a install image for running an install script, these images
will not work to run the actual server and are only designed to reduce installation time and network usage by
pre-installing common installation dependencies such as `curl` and `wget`.

## Available Images

- [`alpine`](https://github.com/matthewpi/images/tree/master/generic/alpine)
  - `ghcr.io/matthewpi/images:alpine`
  - `quay.io/matthewp/pterodactyl:alpine`
- [`fivem`](https://github.com/matthewpi/images/tree/master/games/fivem)
  - `ghcr.io/matthewpi/images:fivem`
  - `quay.io/matthewp/pterodactyl:fivem`
- [`go1.14`](https://github.com/matthewpi/images/tree/master/go/1.14)
  - `ghcr.io/matthewpi/images:go1.14`
  - `quay.io/matthewp/pterodactyl:go1.14`
- [`go1.15`](https://github.com/matthewpi/images/tree/master/go/1.15)
  - `ghcr.io/matthewpi/images:go1.15`
  - `quay.io/matthewp/pterodactyl:go1.15`
- [`go1.16`](https://github.com/matthewpi/images/tree/master/go/1.16)
  - `ghcr.io/matthewpi/images:go1.16`
  - `quay.io/matthewp/pterodactyl:go1.16`
- [`java8`](https://github.com/matthewpi/images/tree/master/java/8)
  - `ghcr.io/matthewpi/images:java8`
  - `quay.io/matthewp/pterodactyl:java8`
- [`java11`](https://github.com/matthewpi/images/tree/master/java/11)
  - `ghcr.io/matthewpi/images:java11`
  - `quay.io/matthewp/pterodactyl:java11`
- [`java14`](https://github.com/matthewpi/images/tree/master/java/14)
  - `ghcr.io/matthewpi/images:java14`
  - `quay.io/matthewp/pterodactyl:java14`
- [`java15`](https://github.com/matthewpi/images/tree/master/java/15)
  - `ghcr.io/matthewpi/images:java15`
  - `quay.io/matthewp/pterodactyl:java15`
- [`java16`](https://github.com/matthewpi/images/tree/master/java/16)
  - `ghcr.io/matthewpi/images:java16`
  - `quay.io/matthewp/pterodactyl:java16`
- [`node12`](https://github.com/matthewpi/images/tree/master/node/12)
  - `ghcr.io/matthewpi/images:node12`
  - `quay.io/matthewp/pterodactyl:node12`
- [`node14`](https://github.com/matthewpi/images/tree/master/node/14)
  - `ghcr.io/matthewpi/images:node14`
  - `quay.io/matthewp/pterodactyl:node14`
- [`node15`](https://github.com/matthewpi/images/tree/master/node/15)
  - `ghcr.io/matthewpi/images:node15`
  - `quay.io/matthewp/pterodactyl:node15`
- [`node16`](https://github.com/matthewpi/images/tree/master/node/16)
  - `ghcr.io/matthewpi/images:node16`
  - `quay.io/matthewp/pterodactyl:node16`
- [`python3.7`](https://github.com/matthewpi/images/tree/master/python/3.7)
  - `ghcr.io/matthewpi/images:python3.7`
  - `quay.io/matthewp/pterodactyl:python3.7`
- [`python3.8`](https://github.com/matthewpi/images/tree/master/python/3.8)
  - `ghcr.io/matthewpi/images:python3.8`
  - `quay.io/matthewp/pterodactyl:python3.8`
- [`python3.9`](https://github.com/matthewpi/images/tree/master/python/3.9)
  - `ghcr.io/matthewpi/images:python3.9`
  - `quay.io/matthewp/pterodactyl:python3.9`
- [`satisfactory`](https://github.com/matthewpi/images/tree/master/games/satisfactory)
  - `ghcr.io/matthewpi/images:satisfactory`
  - `quay.io/matthewp/pterodactyl:satisfactory`
- [`source`](https://github.com/matthewpi/images/tree/master/games/source)
  - `ghcr.io/matthewpi/images:source`
  - `quay.io/matthewp/pterodactyl:source`

### Installation Images

- [`alpine-install`](https://github.com/matthewpi/images/tree/master/installers/alpine)
  - `ghcr.io/matthewpi/images:alpine-install`
  - `quay.io/matthewp/pterodactyl:alpine-install`
- [`source-install`](https://github.com/matthewpi/images/tree/master/installers/source)
  - `ghcr.io/matthewpi/images:source-install`
  - `quay.io/matthewp/pterodactyl:source-install`
