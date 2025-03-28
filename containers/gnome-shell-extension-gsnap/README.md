# `grand-os/internal/gnome-shell-extension-gsnap`

Internal container image to provide
[github.com/GnomeSnapExtensions/gSnap](https://github.com/GnomeSnapExtensions/gSnap)
into GrandOS.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/gnome-shell-extension-gsnap:edge"
```
