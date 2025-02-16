#!/usr/bin/env bash
set -o "errexit" -o "nounset" -o "pipefail"

# get base os-release.
# shellcheck source=/usr/lib/os-release
source /usr/lib/os-release
VERSION_ID="${VERSION_ID:-"00"}"
BASE_PRETTY_NAME="${PRETTY_NAME:-"Fedora Linux"}"

# set image identification.
NAME="GrandOS"
ID="grand-os"
RELEASE_VERSION="20250216.0"
VERSION="${VERSION_ID}.${RELEASE_VERSION}"
PRETTY_NAME="${NAME} ${VERSION} (FROM ${BASE_PRETTY_NAME})"
DEFAULT_HOSTNAME="${ID}"
HOME_URL="https://github.com/RShirohara/grand-os"
DOCUMENTATION_URL="https://github.com/RShirohara/grand-os"
SUPPORT_URL="https://github.com/RShirohara/grand-os/issues"
BUG_REPORT_URL="https://github.com/RShirohara/grand-os/issues"
VARIANT="${NAME}"
VARIANT_ID="${ID}"
IMAGE_ID="${ID}"
IMAGE_VERSION="${VERSION}"
OSTREE_VERSION="${VERSION}"

# write grand-os identification to /usr/lib/os-release.
sed -i "s|^NAME=.*|NAME=\"${NAME}\"|" /usr/lib/os-release
sed -i "s|^VERSION=.*|VERSION=\"${VERSION}\"|" /usr/lib/os-release
sed -i "s|^PRETTY_NAME=.*|PRETTY_NAME=\"${PRETTY_NAME}\"|" /usr/lib/os-release
sed -i "s|^DEFAULT_HOSTNAME=.*|DEFAULT_HOSTNAME=\"${DEFAULT_HOSTNAME}\"|" /usr/lib/os-release
sed -i "s|^HOME_URL=.*|HOME_URL=\"${HOME_URL}\"|" /usr/lib/os-release
sed -i "s|^DOCUMENTATION_URL=.*|DOCUMENTATION_URL=\"${DOCUMENTATION_URL}\"|" /usr/lib/os-release
sed -i "s|^SUPPORT_URL=.*|SUPPORT_URL=\"${SUPPORT_URL}\"|" /usr/lib/os-release
sed -i "s|^BUG_REPORT_URL=.*|BUG_REPORT_URL=\"${BUG_REPORT_URL}\"|" /usr/lib/os-release
sed -i "/^REDHAT_.*/d" /usr/lib/os-release
sed -i "/^SUPPORT_END=.*/d" /usr/lib/os-release
sed -i "s|^VARIANT=.*|VARIANT=\"${VARIANT}\"|" /usr/lib/os-release
sed -i "s|^VARIANT_ID=.*|VARIANT_ID=\"${VARIANT_ID}\"|" /usr/lib/os-release
sed -i "s|^IMAGE_ID=.*|IMAGE_ID=\"${IMAGE_ID}\"|" /usr/lib/os-release
sed -i "s|^IMAGE_VERSION=.*|IMAGE_VERSION=\"${IMAGE_VERSION}\"|" /usr/lib/os-release
sed -i "s|^OSTREE_VERSION=.*|OSTREE_VERSION=\"${OSTREE_VERSION}\"|" /usr/lib/os-release
