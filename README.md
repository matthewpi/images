# Yolks
A curated collection of core images that can be used with Pterodactyl's Egg system. Each image is rebuilt
periodically to ensure dependencies are always up-to-date.

Images are hosted on both `ghcr.io` and `quay.io` for redundancy. To use any of these images, use
`ghcr.io/pterodactyl/yolks:<IMAGE>` or `quay.io/pterodactyl/yolks:<IMAGE>`.

Any images ending with `-install` should only be used as a install image for running an install script, these images
will not work to run the actual server and are only designed to reduce installation time and network usage by
pre-installing common installation dependencies such as `curl` and `wget`.

All of these images are available for `linux/amd64` and `linux/arm64` versions, unless otherwise specified, to use
these images on an arm system, no modification to them or the tag is needed, they should just work.
