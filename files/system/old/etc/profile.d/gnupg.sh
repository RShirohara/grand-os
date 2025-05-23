#!/usr/bin/env bash

export GNUPGHOME="${XDG_DATA_HOME:-${HOME}/.local/share}/gnupg"
export GPG_SOCKET_DIR=$(gpgconf --list-dirs socketdir)

find /etc/grand-os/templates/gnupg -type "f" \
| while read -r PATH; do \
    FILE_NAME="${PATH##*/}"
    SYSTEMD_UNIT_DIR="${XDG_DATA_HOME:-${HOME}/.local/share}/systemd/user"
    if [[ ! -d "${SYSTEMD_UNIT_DIR}" ]]; then
      /usr/bin/mkdir --parents "${SYSTEMD_UNIT_DIR}"
    fi
    if [[ ! -f "${SYSTEMD_UNIT_DIR}/${FILE_NAME}" ]]; then
      /usr/bin/sed --expression="s|\${GPG_SOCKET_DIR}|${GPG_SOCKET_DIR}|g" \
        "${PATH}" \
        > "${SYSTEMD_UNIT_DIR}/${FILE_NAME}"
    fi
  done
