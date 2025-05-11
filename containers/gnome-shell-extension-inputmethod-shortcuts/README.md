# `grand-os/internal/gnome-shell-extension-inputmethod-shortcuts`

Internal container image to provide
[github.com/osamuaoki/inputmethod-shortcuts](https://github.com/osamuaoki/inputmethod-shortcuts)
into GrandOS.

## Build

```shell
podman build . --build-arg-file="./build.env" --tag="ghcr.io/rshirohara/grand-os/internal/gnome-shell-extension-inputmethod-shortcuts:edge"
```
