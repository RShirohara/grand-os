# `grand-os/internal/whitesur-cursors`

Internal container image to provide
[github.com/vinceliuice/WhiteSur-cursors](https://github.com/vinceliuice/WhiteSur-cursors)
into GrandOS.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/whitesur-cursors:edge"
```
