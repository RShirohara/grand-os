# `org.kde.KStyle.Kvantum`

Internal flatpak bundle to provide
[`org.kde.WaylandDecoration.QWhiteSurGtkDecorations`](https://github.com/FengZhongShaoNian/QWhiteSurGtkDecorations)
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
      "./branches/@/org.kde.WaylandDecoration.QWhiteSurGtkDecorations.json" \
    && flatpak build-bundle \
      --runtime \
      "${XDG_DATA_HOME}/flatpak/repo" \
      ./bundles/org.kde.WaylandDecoration.QWhiteSurGtkDecorations_@.flathub \
      org.kde.WaylandDecoration.QWhiteSurGtkDecorations \
      @
  ' \
&& podman build --tag="ghcr.io/rshirohara/grand-os/internal/org.kde.waylanddecoration.qwhitesurgtkdecorations:edge" .
```
