#!/usr/bin/env bash

set -o "errexit" -o "nounset" -o "pipefail"

SOURCE_DIR="/WhiteSur-gtk-theme/src"
TARGET_DIR="/usr/share/themes/WhiteSur-Dark/gtk-4.0"
SASSC_OPT="-t expanded"

rm "${TARGET_DIR}/gtk.gresource"
sassc ${SASSC_OPT} "${SOURCE_DIR}/main/gtk-4.0/gtk-Dark.scss" "${TARGET_DIR}/gtk.css"
sassc ${SASSC_OPT} "${SOURCE_DIR}/main/gtk-4.0/gtk-Dark.scss" "${TARGET_DIR}/gtk-dark.css"
cp -r "${SOURCE_DIR}/assets/gtk/common-assets/assets" "${TARGET_DIR}/"
cp -r "${SOURCE_DIR}/assets/gtk/common-assets/sidebar-assets/"*".png" "${TARGET_DIR}/assets/"
cp -r "${SOURCE_DIR}/assets/gtk/scalable" "${TARGET_DIR}/assets/"
cp -r "${SOURCE_DIR}/assets/gtk/windows-assets/titlebutton" "${TARGET_DIR}/windows-assets/"
