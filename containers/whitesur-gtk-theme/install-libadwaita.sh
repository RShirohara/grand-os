#!/usr/bin/env bash

set -o "errexit" -o "nounset" -o "pipefail"

SOURCE_DIR="/WhiteSur-gtk-theme/src"
TARGET_DIR_PREFIX="/usr/share/themes/WhiteSur-"
TARGET_DIR_POSTFIX="/gtk-4.0"
SASSC_OPT="-t expanded"

rm "${TARGET_DIR_PREFIX}Dark${TARGET_DIR_POSTFIX}/gtk.gresource"
sassc ${SASSC_OPT} "${SOURCE_DIR}/main/gtk-4.0/gtk-Light.scss" "${TARGET_DIR_PREFIX}Dark${TARGET_DIR_POSTFIX}/gtk.css"
sassc ${SASSC_OPT} "${SOURCE_DIR}/main/gtk-4.0/gtk-Dark.scss" "${TARGET_DIR_PREFIX}Dark${TARGET_DIR_POSTFIX}/gtk-dark.css"
cp -r "${SOURCE_DIR}/assets/gtk/common-assets/assets" "${TARGET_DIR_PREFIX}Dark${TARGET_DIR_POSTFIX}/"
cp -r "${SOURCE_DIR}/assets/gtk/common-assets/sidebar-assets/"*".png" "${TARGET_DIR_PREFIX}Dark${TARGET_DIR_POSTFIX}/assets/"
cp -r "${SOURCE_DIR}/assets/gtk/scalable" "${TARGET_DIR_PREFIX}Dark${TARGET_DIR_POSTFIX}/assets/"
cp -r "${SOURCE_DIR}/assets/gtk/windows-assets/titlebutton" "${TARGET_DIR_PREFIX}Dark${TARGET_DIR_POSTFIX}/windows-assets/"

rm "${TARGET_DIR_PREFIX}Light${TARGET_DIR_POSTFIX}/gtk.gresource"
sassc ${SASSC_OPT} "${SOURCE_DIR}/main/gtk-4.0/gtk-Light.scss" "${TARGET_DIR_PREFIX}Light${TARGET_DIR_POSTFIX}/gtk.css"
sassc ${SASSC_OPT} "${SOURCE_DIR}/main/gtk-4.0/gtk-Dark.scss" "${TARGET_DIR_PREFIX}Light${TARGET_DIR_POSTFIX}/gtk-dark.css"
cp -r "${SOURCE_DIR}/assets/gtk/common-assets/assets" "${TARGET_DIR_PREFIX}Light${TARGET_DIR_POSTFIX}/"
cp -r "${SOURCE_DIR}/assets/gtk/common-assets/sidebar-assets/"*".png" "${TARGET_DIR_PREFIX}Light${TARGET_DIR_POSTFIX}/assets/"
cp -r "${SOURCE_DIR}/assets/gtk/scalable" "${TARGET_DIR_PREFIX}Light${TARGET_DIR_POSTFIX}/assets/"
cp -r "${SOURCE_DIR}/assets/gtk/windows-assets/titlebutton" "${TARGET_DIR_PREFIX}Light${TARGET_DIR_POSTFIX}/windows-assets/"
