# `org.kde.KStyle.Kvantum`

Internal flatpak bundle to provide
[`org.kde.KStyle.Kvantum`](https://github.com/flathub/org.kde.KStyle.Kvantum)
into GrandOS.

## Build

```shell
flatpak run org.flatpak.Builder --user --install-deps-from=flathub --force-clean \
  "./dist/${TARGET_BRANCH}" \
  "./branches/${TARGET_BRANCH}$/org.kde.KStyle.Kvantum.json"
```
