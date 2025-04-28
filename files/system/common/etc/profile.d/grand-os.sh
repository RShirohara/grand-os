#!/usr/bin/env bash

# Override XDG Base directory.
GRAND_OS_DATA_DIRS="/usr/share/grand-os/xdg-overrides/data-dirs"
if [[ ! "${XDG_DATA_DIRS}" =~ .*:?${GRAND_OS_DATA_DIRS}:* ]]; then
  export XDG_DATA_DIRS="${GRAND_OS_DATA_DIRS}:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"
fi

# Override cursor location.
export XCURSOR_PATH="${XDG_DATA_HOME:-${HOME}/.local/share}/icons:/usr/share/icons"

# Override GnuPG default config directory.
export GNUPGHOME="${XDG_DATA_HOME:-${HOME}/.local/share}/gnupg"

# Override IME setting.
export GTK_IM_MODULE="ibus"
export QT_IM_MODULE="ibus"
export XMODIFIERS="@im=ibus"

# Override qt client-side decoration on wayland.
export QT_WAYLAND_DECORATION=whitesur-gtk
