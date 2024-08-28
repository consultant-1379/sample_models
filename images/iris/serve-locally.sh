#!/usr/bin/env bash

set -x

IMAGE="armdocker.rnd.ericsson.se/proj-mxe-models/image/iris:4.1.1"

docker run -p 6000:6000 -p 9000:9000 -it  "${IMAGE}"