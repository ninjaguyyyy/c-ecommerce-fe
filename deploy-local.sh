#!/bin/sh

# Exit on error
set -e

# Enable debug
set -x


cd docker
export COMPOSE_DOCKER_CLI_BUILD=1
export DOCKER_BUILDKIT=1
export DOCKER_DEFAULT_PLATFORM=linux/amd64
./build.sh

./push-registry.sh