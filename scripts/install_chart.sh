#!/usr/bin/env bash
# Bash3 Boilerplate. Copyright (c) 2014, kvz.io

set -o errexit
set -o pipefail
set -o nounset
# set -o xtrace
helm upgrade -i \
  mosquitto \
  mosquitto \
  -n mosquitto \
  --create-namespace \
  --repo https://k8s-at-home.com/charts/ \
  --wait