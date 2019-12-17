#!/bin/bash
set -e

docker kill antichars 2>/dev/null || true
docker rm antichars 2>/dev/null || true
echo 'Environment destroyed.'
