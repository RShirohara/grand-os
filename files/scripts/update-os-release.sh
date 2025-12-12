#!/usr/bin/env bash

set -o "errexit" -o "nounset" -o "pipefail"

# shellcheck source=/dev/null
source /usr/lib/os-release

NAME="GrandOS"
ID="grand-os"
RELEASE_VERSION="20251212.0"
VERSION="${VERSION_ID}.${RELEASE_VERSION}"
REPO_URL="https://github.com/RShirohara/grand-os"
REPO_ISSUE_URL="https://github.com/RShirohara/grand-os/issues"
VARIANT_ID="${IMAGE_NAME##*/}"

cat << EOF > /usr/lib/os-release
NAME="${NAME}"
ID="${ID}"
ID_LIKE="fedora"
VERSION="${VERSION}"
VERSION_ID="${VERSION_ID}"
VERSION_CODENAME="${VERSION_CODENAME}"
PRETTY_NAME="${NAME} ${VERSION}"
ANSI_COLOR="${ANSI_COLOR}"
LOGO="${LOGO}"
CPE_NAME="cpe:/o:rshirohara:${ID}:${VERSION}"
DEFAULT_HOSTNAME="${ID}"
HOME_URL="${REPO_URL}"
DOCUMENTATION_URL="${REPO_URL}"
SUPPORT_URL="${REPO_ISSUE_URL}"
BUG_REPORT_URL="${REPO_ISSUE_URL}"
VARIANT="${VARIANT}"
VARIANT_ID="${VARIANT_ID}"
OSTREE_VERSION="${VERSION}"
EOF

cat /usr/lib/os-release
