# `grand-os/internal/whitesur-icon-theme`

Internal container image to provide
[github.com/vinceliuice/WhiteSur-icon-theme](https://github.com/vinceliuice/WhiteSur-icon-theme)
into GrandOS.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/whitesur-icon-theme:edge"
```
