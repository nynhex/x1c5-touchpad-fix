#!/usr/bin/env bash

set -e

cp /boot/config-$(uname -r) kernel-config

docker build -t git-upstream-kernel-build .
curl -fsSL 'http://push.wendt.io/?message=kernel-build-ready' >> /dev/null