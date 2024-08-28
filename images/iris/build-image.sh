#!/usr/bin/env bash

set -x

SCRIPT=$(readlink -f $0)
SCRIPTPATH=$(dirname $SCRIPT)
REPOROOT=$(dirname $(dirname $SCRIPTPATH))

BUILD_CONTEXT="$REPOROOT/iris_model"
IMAGE="armdocker.rnd.ericsson.se/proj-mxe-models/image/iris"
TAG="4.1.1"
DOCKERFILE=$REPOROOT/images/iris/Dockerfile
SELDON_CORE_VERSION="1.16.0"

docker build --no-cache -t  "${IMAGE}:${TAG}" "${BUILD_CONTEXT}" -f "${DOCKERFILE}" --build-arg SELDON_CORE_VERSION="${SELDON_CORE_VERSION}" --progress plain

#docker push "${IMAGE}:${TAG}"
# docker push $IMAGE:4.1.2 also
