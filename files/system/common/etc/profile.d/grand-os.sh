#!/usr/bin/env bash

# Override XDG Base directory.
export XDG_DATA_DIRS="/usr/share/grand-os/data-dirs-override:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"

# Override IME setting.
GTK_IM_MODULE="ibus"
QT_IM_MODULE="ibus"
XMODIFIERS="@im=ibus"

# Override cursor location.
XCURSOR_PATH="${XCURSOR_PATH}:/usr/share/icons:${XDG_DATA_HOME}/icons"

# Override GnuPG default config directory.
export GNUPGHOME="${XDG_DATA_HOME:-${HOME}/.local/share}/gnupg"

# Override qt client-side decoration on wayland.
export QT_WAYLAND_DECORATION=whitesur-gtk
