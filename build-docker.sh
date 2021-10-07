#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

RELEASE_VERSION=$(cat release-version.txt)
docker build -t decentage/iep-static-site:${RELEASE_VERSION} .

echo "Creating fake zip file to avoid artifact upload issue. to be removed"
mkdir -p ./build
touch ./build/iep-static-site.zip