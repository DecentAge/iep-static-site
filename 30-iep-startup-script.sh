#!/bin/bash
set -o nounset
set -o errexit
set -o pipefail

mkdir -p /usr/share/nginx/html/master-config
cp -rfv /iep-static-site/sites/master-config/* /usr/share/nginx/html/master-config

mkdir -p /usr/share/nginx/html/iep-tools
cp -rfv /iep-static-site/sites/iep-tools/* /usr/share/nginx/html/iep-tools
mkdir -p /usr/share/nginx/html/iep-check-balance
cp -rfv /iep-static-site/sites/iep-check-balance/* /usr/share/nginx/html/iep-check-balance

echo "Setting environment variables in /usr/share/nginx/html"
envsubst < /iep-static-site/sites/iep-tools/index.html > /usr/share/nginx/html/iep-tools/index.html
envsubst < /iep-static-site/sites/iep-check-balance/index.html > /usr/share/nginx/html/iep-check-balance/index.html