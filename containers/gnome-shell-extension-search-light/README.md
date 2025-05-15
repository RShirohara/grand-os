# `grand-os/internal/gnome-shell-extension-search-light`

Internal container image to provide
[github.com/icedman/search-light](https://github.com/icedman/search-light)
into GrandOS.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/gnome-shell-extension-search-light:edge"
```
