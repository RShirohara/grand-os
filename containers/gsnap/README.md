# `grand-os/internal/gsnap`

Internal container image to provide
[github.com/GnomeSnapExtensions/gSnap](https://github.com/GnomeSnapExtensions/gSnap)
into GrandOS.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/gsnap:edge"
```
