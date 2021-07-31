#!/usr/bin/env bash
set -euo pipefail

if [ -f /etc/os-release ]; then
    source /etc/os-release
fi

is_mac() {
    if [ "$(uname)" == "Darwin" ]; then return 0; else return 1; fi
}

is_ubuntu() {
    if [ "$NAME" == "Ubuntu" ]; then return 0; else return 1; fi
}

if is_mac; then echo "is mac"; else echo "$NAME"; fi
if is_ubuntu; then echo "is ubuntu"; else echo "$NAME"; fi
