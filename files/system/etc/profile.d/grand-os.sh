#!/usr/bin/env bash

## Override system files.
export PATH="/etc/grand-os/bin:${PATH}"
export XDG_DATA_DIRS="/etc/grand-os/share:${XDG_DATA_DIRS:-/usr/local/share:/usr/share}"
