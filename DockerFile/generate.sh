#!/bin/bash
#
# (C) Christof Fetzer, 2017

set -x -e

export TAG="again"
export FULLTAG="sconecuratedimages/helloworld:$TAG"

echo "generating image $FULLTAG"

docker build --pull -t $FULLTAG .

docker push $FULLTAG

