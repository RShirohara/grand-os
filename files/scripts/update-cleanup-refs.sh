#!/usr/bin/env bash
set -o "errexit" -o "nounset" -o "pipefail"

IMAGE_ID=$(
  grep --only-matching --extended-regexp \
    --regexp='^ID="(.+)"$' \
    /usr/lib/os-release \
  | sed --regexp-extended \
    --expression='s|^.+"(.+)"$|\1|'
)
IMAGE_REF_NAME=$(
  grep --only-matching --extended-regexp \
    --regexp='^VARIANT_ID="(.+)"$' \
    /usr/lib/os-release \
  | sed --regexp-extended \
    --expression='s|^.+"(.+)"$|\1|'
)

sed \
  --regexp-extended \
  --expression="32 s|^IMAGE_REF_NAME=.+$|IMAGE_REF_NAME=\"${IMAGE_REF_NAME}\"|" \
  --expression="34 s|ghcr.io/secureblue|ghcr.io/rshirohara/${IMAGE_ID}|" \
  --in-place /usr/libexec/secureblue/securebluecleanup
