# `grand-os/internal/bluebuild-secureblue-singing`

Internal container image to provide blue-build module `secureblue-singing` by
[github.com/secureblue/secureblue](https://github.com/secureblue/secureblue)
into GrandOS.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/bluebuild-secureblue-singing:edge"
```
