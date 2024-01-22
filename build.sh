#!/bin/bash -x

cd "$(dirname "$0")"
TAG="$(date +%Y-%m-%d)"
docker build . --tag rojen/php8.3-apache:latest --tag rojen/php8.3-apache:${TAG}
docker push rojen/php8.3-apache:latest
docker push rojen/php8.3-apache:${TAG}
