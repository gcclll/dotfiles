#!/usr/bin/env bash
set -euo pipefail

if [ $(uname) == "Linux" ]; then
    echo "is linux"
elif [ $(uname) == "Darwin" ]; then
    echo "is mac"
else
    echo $(uname)
fi
