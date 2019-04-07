#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-bitcoinvenezuelapay/bitcoinvenezuelad-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/bitcoinvenezuelad docker/bin/
cp $BUILD_DIR/src/bitcoinvenezuela-cli docker/bin/
cp $BUILD_DIR/src/bitcoinvenezuela-tx docker/bin/
strip docker/bin/bitcoinvenezuelad
strip docker/bin/bitcoinvenezuela-cli
strip docker/bin/bitcoinvenezuela-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
