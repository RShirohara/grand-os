#!/usr/bin/env bash
set -o "errexit" -o "nounset" -o "pipefail"

# Get default kargs.
LINE_START=$(
  grep --line-number --only-matching \
    --regexp="Applying boot parameters..." \
    /usr/share/bluebuild/justfiles/kargs.just \
  | cut --delimiter=':' --fields=1
)
LINE_END=$(
  grep --line-number --only-matching \
    --regexp="Hardening kargs applied." \
    /usr/share/bluebuild/justfiles/kargs.just \
  | cut --delimiter=':' --fields=1
)
KARGS=$(
  cat /usr/share/bluebuild/justfiles/kargs.just \
  | head --lines="${LINE_END}" \
  | tail --lines="${LINE_START}" \
  | grep --only-matching --extended-regexp \
    --regexp="--append-if-missing=(.+)" \
  | sed --expression="s| \\\\$||g" \
  | cut --delimiter="=" --fields="2-3" \
  | sed --regexp-extended \
    --expression="s|^(.+)$|\"\1\"|g" \
  | sed --null-dat --expression="s|\n|, |g"
)

# Write kargs to bootc config.
sed --expression="s|<KARGS>|${KARGS}|" \
  --in-place /usr/lib/bootc/kargs.d/10-secureblue.toml
