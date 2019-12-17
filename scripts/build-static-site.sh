#!/bin/bash
#
# Build the static site in ./docs.
#
set -e

echo '=> Build the Jekyll site.'
# This is required on CircleCI to avoid https://github.com/jekyll/jekyll/issues/7591
mkdir -p ./docs/.jekyll-cache
mkdir -p ./docs/_site
# If you change the image here also change it in ./scripts/deploy.sh
docker run --rm \
  --volume="$PWD/docs:/srv/jekyll" \
  -it jekyll/minimal:4 \
  jekyll build
