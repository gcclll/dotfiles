#!/usr/bin/env bash
set -euo pipefail

emacs --batch --eval "(progn (require 'org) (setq org-confirm-babel-evaluate nil) (org-babel-tangle-file \"~/.doom.d/config.org\"))" && /bin/bash ~/.gclrc/shl/cp-config-org.sh
