# `grand-os/internal/kzones`

Internal container image to provide
[github.com/gerritdevriese/kzones](https://github.com/gerritdevriese/kzones)
into grand-os.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/kzones:edge"
```
