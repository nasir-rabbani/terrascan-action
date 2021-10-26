#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

DOCKER_REPO="nasirrabbani/terrascan-action"
LATEST_TAG=$(git describe --abbrev=0 --tags)
LATEST_TAG_SHORT=$(echo "${LATEST_TAG//v}")

docker build -t ${DOCKER_REPO}:latest -t ${DOCKER_REPO}:${LATEST_TAG_SHORT} .
