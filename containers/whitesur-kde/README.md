# `grand-os/internal/whitesur-kde`

Internal container image to provide
[github.com/vinceliuice/WhiteSur-kde](https://github.com/vinceliuice/WhiteSur-kde)
into GrandOS.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/whitesur-kde:edge"
```
