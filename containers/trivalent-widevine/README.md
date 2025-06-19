# `grand-os/internal/trivalent-widevine`

Internal container image to provide [widevine](https://www.widevine.com/) DRM support
to Trivalent.

## Build

```shell
podman build --tag="ghcr.io/rshirohara/grand-os/internal/trivalent-widevine:edge" .
```

## Check version

```shell
curl https://dl.google.com/widevine-cdm/versions.txt | tail --lines=1
```
