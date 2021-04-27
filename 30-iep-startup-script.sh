#!/bin/bash
set -o nounset
set -o errexit
set -o pipefail

cp -rfv /iep-static-site/${IEP_CHAIN}/* /usr/share/nginx/html/