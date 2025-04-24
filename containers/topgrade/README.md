# `grand-os/internal/topgrade`

Internal container image to provide
[github.com/topgrade-rs/topgrade](https://github.com/topgrade-rs/topgrade)
into GrandOS.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/topgrade:edge"
```
