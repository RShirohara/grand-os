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

# Override GTK1 & 2 config directory location.
export GTK_RC_FILES="${XDG_CONFIG_HOME:-${HOME}/.config}/gtk-1.0/gtkrc"
export GTK2_RC_FILES="${XDG_CONFIG_HOME:-${HOME}/.config}/gtk-2.0/gtkrc"

# Override IME setting.
export GTK_IM_MODULE="fcitx"
export QT_IM_MODULE="fcitx"
export XMODIFIERS="@im=fcitx"
