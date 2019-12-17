#!/bin/bash
#
# Continuous integration script run on CircleCI, see ./.circleci/config.yml.
#
set -e

./scripts/deploy.sh
./scripts/destroy.sh
