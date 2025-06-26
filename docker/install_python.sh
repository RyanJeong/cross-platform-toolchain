#!/bin/bash

set -euo pipefail
PY=$1
if ! apt-cache show python$PY >/dev/null 2>&1; then
  add-apt-repository -y ppa:deadsnakes/ppa && apt-get update
fi
apt-get install -y python$PY python$PY-dev python$PY-distutils
ln -sf /usr/bin/python$PY /usr/local/bin/python
python -m pip install --no-cache-dir --upgrade pip setuptools wheel ninja pytest scikit-build
