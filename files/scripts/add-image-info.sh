#!/usr/bin/env bash
set -o "errexit" -o "nounset" -o "pipefail"

# get base-image info.
# shellcheck source=/usr/lib/os-release
source /usr/lib/os-release
VERSION_ID="${VERSION_ID:-"00"}"
BASE_PRETTY_NAME="${PRETTY_NAME%% *}"

# image info definition.
NAME="GrandOS"
ID="grand-os"
ID_LIKE="fedora"
RELEASE_VERSION="20250829.0"
VERSION="${VERSION_ID}.${RELEASE_VERSION}"
PRETTY_NAME="${NAME} ${VERSION} (FROM ${BASE_PRETTY_NAME})"
CPE_NAME="cpe:/o:rshirohara:${ID}:${VERSION}"
DEFAULT_HOSTNAME="${ID}"
HOME_URL="https://github.com/RShirohara/grand-os"
DOCUMENTATION_URL="https://github.com/RShirohara/grand-os"
SUPPORT_URL="https://github.com/RShirohara/grand-os/issues"
BUG_REPORT_URL="https://github.com/RShirohara/grand-os/issues"
VARIANT_ID="${IMAGE_NAME##*/}"
OSTREE_VERSION="${VERSION}"

# write grand-os image info to /usr/lib/os-release.
sed \
   --expression="s|^NAME=.*|NAME=\"${NAME}\"|" \
   --expression="s|^VERSION=.*|VERSION=\"${VERSION}\"|" \
   --expression="s|^ID=.*|ID=\"${ID}\"|" \
   --expression="s|^ID_LIKE=.*|ID_LIKE=\"${ID_LIKE}\"|" \
   --expression="s|^PRETTY_NAME=.*|PRETTY_NAME=\"${PRETTY_NAME}\"|" \
   --expression="s|^CPE_NAME=.*|CPE_NAME=\"${CPE_NAME}\"|" \
   --expression="s|^DEFAULT_HOSTNAME=.*|DEFAULT_HOSTNAME=\"${DEFAULT_HOSTNAME}\"|" \
   --expression="s|^HOME_URL=.*|HOME_URL=\"${HOME_URL}\"|" \
   --expression="s|^DOCUMENTATION_URL=.*|DOCUMENTATION_URL=\"${DOCUMENTATION_URL}\"|" \
   --expression="s|^SUPPORT_URL=.*|SUPPORT_URL=\"${SUPPORT_URL}\"|" \
   --expression="s|^BUG_REPORT_URL=.*|BUG_REPORT_URL=\"${BUG_REPORT_URL}\"|" \
   --expression="/^REDHAT_.*/d" \
   --expression="/^SUPPORT_END=.*/d" \
   --expression="s|^VARIANT=.*|VARIANT=\"${VARIANT}\"|" \
   --expression="s|^VARIANT_ID=.*|VARIANT_ID=\"${VARIANT_ID}\"|" \
   --expression="s|^OSTREE_VERSION=.*|OSTREE_VERSION=\"${OSTREE_VERSION}\"|" \
   --in-place /usr/lib/os-release
