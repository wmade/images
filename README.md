# Images

This repository contains a bunch of images designed for use with Pterodactyl's egg system.  Each image is rebuilt
periodically to ensure dependencies are always up-to-date.

Images are hosted on both `ghcr.io` and `quay.io` for redundancy.

To use any of these images, use `ghcr.io/wmade/images:<IMAGE>` or `quay.io/matthewp/pterodactyl:<IMAGE>`.

Any images ending with `-install` should only be used as a install image for running an install script, these images
will not work to run the actual server and are only designed to reduce installation time and network usage by
pre-installing common installation dependencies such as `curl` and `wget`.

## Available Images

### Games

- [`fivem`](https://github.com/wmade/images/tree/master/games/fivem)
  - Image specifically designed for running [FiveM](https://fivem.net)
  - Tags
    - `ghcr.io/wmade/images:fivem`
    - `quay.io/matthewp/pterodactyl:fivem`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`source`](https://github.com/wmade/images/tree/master/games/source)
  - Image specifically designed for running Source Engine servers.
  - Tags
    - `ghcr.io/wmade/images:source`
    - `quay.io/matthewp/pterodactyl:source`
  - Supported Architectures
    - `linux/amd64`

### Generic

- [`alpine`](https://github.com/wmade/images/tree/master/generic/alpine)
  - Generic [Alpine](https://alpinelinux.org) Linux image
  - Tags
    - `ghcr.io/wmade/images:alpine`
    - `quay.io/matthewp/pterodactyl:alpine`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`debian`](https://github.com/wmade/images/tree/master/generic/debian)
  - Generic [Debian](https://www.debian.org/) image
  - Tags
    - `ghcr.io/wmade/images:debian`
    - `quay.io/matthewp/pterodactyl:debian`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`ubi`](https://github.com/wmade/images/tree/master/generic/ubi)
  - Generic [RedHat UBI](https://developers.redhat.com/products/rhel/ubi) image
  - Tags
    - `ghcr.io/wmade/images:ubi`
    - `quay.io/matthewp/pterodactyl:ubi`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`

### Golang

- [`go1.15`](https://github.com/wmade/images/tree/master/go/1.15)
  - Tags
    - `ghcr.io/wmade/images:go1.15`
    - `quay.io/matthewp/pterodactyl:go1.15`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`go1.16`](https://github.com/wmade/images/tree/master/go/1.16)
  - Tags
    - `ghcr.io/wmade/images:go1.16`
    - `quay.io/matthewp/pterodactyl:go1.16`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`go1.17`](https://github.com/wmade/images/tree/master/go/1.17)
  - Tags
    - `ghcr.io/wmade/images:go1.17`
    - `quay.io/wmade/pterodactyl:go1.17`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`

### Java

#### Java 8

- [`java8`](https://github.com/wmade/images/tree/master/java/8)
  - Tags
    - `ghcr.io/wmade/images:java8`
    - `quay.io/wmade/pterodactyl:java8`
  - Supported Architectures
    - `linux/amd64`

#### Java 11

- [`java11-hotspot`](https://github.com/wmade/images/tree/master/java/11-hotspot)
  - Tags
    - `ghcr.io/wmade/images:java11-hotspot`
    - `quay.io/wmade/pterodactyl:java11-hotspot`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`java11-zulu`](https://github.com/wmade/images/tree/master/java/11-zulu)
  - Tags
    - `ghcr.io/wmade/images:java11-zulu`
    - `quay.io/wmade/pterodactyl:java11-zulu`
  - Supported Architectures
    - `linux/amd64`

#### Java 16

- [`java16-hotspot`](https://github.com/wmade/images/tree/master/java/16-hotspot)
  - Tags
    - `ghcr.io/wmade/images:java16-hotspot`
    - `quay.io/wmade/pterodactyl:java16-hotspot`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`java16-zulu`](https://github.com/wmade/images/tree/master/java/16-zulu)
  - Tags
    - `ghcr.io/wmade/images:java16-zulu`
    - `quay.io/matthewp/pterodactyl:java16-zulu`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`

### Node.js

- [`Current`](https://github.com/wmade/images/tree/master/nodejs/Current)
  - Tags
    - `ghcr.io/wmade/images:nodejs_current`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
  - Actually version : [v14](https://github.com/wmade/images/tree/master/nodejs/14)
  - End of life: `April 2022`
- [`LTS`](https://github.com/wmade/images/tree/master/nodejs/LTS)
  - Tags
    - `ghcr.io/wmade/images:nodejs_LTS`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
  - Actually version : [v17](https://github.com/wmade/images/tree/master/nodejs/17)
  - End of life: `June 2022`
  
- [`node12`](https://github.com/wmade/images/tree/master/nodejs/14)
  - Tags
    - `ghcr.io/wmade/images:nodejs_12`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
  - End of life: `April 2022`
- [`node14`](https://github.com/wmade/images/tree/master/nodejs/12)
  - Tags
    - `ghcr.io/wmade/images:nodejs_14`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
  - End of life: `April 2023`
- [`node16`](https://github.com/wmade/images/tree/master/nodejs/16)
  - Tags
    - `ghcr.io/wmade/images:nodejs_16`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
  - End of life: `April 2024`
- [`node17`](https://github.com/wmade/images/tree/master/nodejs/17)
  - Tags
    - `ghcr.io/wmade/images:nodejs_17`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
  - End of life: `June 2022`
- [`node18`](https://github.com/wmade/images/tree/master/nodejs/18)
  - Container dosen't exist !
  - Tags
    - `ghcr.io/wmade/images:nodejs_18`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
  - End of life: `June 2025`

### Python

- [`python3.7`](https://github.com/wmade/images/tree/master/python/3.7)
  - Tags
    - `ghcr.io/wmade/images:python3.7`
    - `quay.io/wmade/pterodactyl:python3.7`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`python3.8`](https://github.com/wmade/images/tree/master/python/3.8)
  - Tags
    - `ghcr.io/wmade/images:python3.8`
    - `quay.io/wmade/pterodactyl:python3.8`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`python3.9`](https://github.com/wmade/images/tree/master/python/3.9)
  - Tags
    - `ghcr.io/wmade/images:python3.9`
    - `quay.io/wmade/pterodactyl:python3.9`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`

### Installers

- [`alpine-install`](https://github.com/wmade/images/tree/master/installers/alpine)
  - Tags
    - `ghcr.io/wmade/images:alpine-install`
    - `quay.io/wmade/pterodactyl:alpine-install`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`debian-install`](https://github.com/wmade/images/tree/master/installers/debian)
  - Tags
    - `ghcr.io/wmade/images:debian-install`
    - `quay.io/wmade/pterodactyl:debian-install`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
- [`source-install`](https://github.com/wmade/images/tree/master/installers/source)
  - Tags
    - `ghcr.io/wmade/images:source-install`
    - `quay.io/matthewp/pterodactyl:source-install`
  - Supported Architectures
    - `linux/amd64`
- [`ubi-install`](https://github.com/wmade/images/tree/master/installers/ubi)
  - Tags
    - `ghcr.io/wmade/images:ubi-install`
    - `quay.io/matthewp/pterodactyl:ubi-install`
  - Supported Architectures
    - `linux/amd64`
    - `linux/arm64`
