# `grand-os/internal/hackgen`

Internal container image to provide
[github.com/yuru7/HackGen](https://github.com/yuru7/HackGen)
into grand-os.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/hackgen:edge"
```
