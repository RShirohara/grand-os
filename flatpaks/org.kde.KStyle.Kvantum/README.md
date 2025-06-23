# `org.kde.KStyle.Kvantum`

Internal flatpak bundle to provide
[`org.kde.KStyle.Kvantum`](https://github.com/flathub/org.kde.KStyle.Kvantum)
into GrandOS.

## Build

```shell
mkdir --parents ./bundles
find branches -mindepth 1 -maxdepth 1 -type "d" \
| cut --delimiter="/" --fields="2" \
| xargs --replace="@" \
  bash -c '
    flatpak run org.flatpak.Builder \
      --force-clean \
      --install \
      --install-deps-from="flathub" \
      --user \
      "./dist/@" \
      "./branches/@/org.kde.KStyle.Kvantum.json" \
    && flatpak build-bundle \
      --runtime \
      "${XDG_DATA_HOME}/flatpak/repo" \
      ./bundles/org.kde.KStyle.Kvantum_@.flathub \
      org.kde.KStyle.Kvantum \
      @
  ' \
&& podman build --tag="ghcr.io/rshirohara/grand-os/internal/org.kde.kstyle.kvantum:edge" .
```
