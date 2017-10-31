#!/bin/bash
#
# (C) Christof Fetzer, 2017

set -x -e

export TAG="dynamic"
export FULLTAG="sconecuratedimages/helloworld:$TAG"

echo "generating image $FULLTAG"

docker run --rm  -v "$PWD":/usr/src/myapp -w /usr/src/myapp sconecuratedimages/muslgcc gcc  hello_again.c -o dyn_hello_again

docker build --pull -t $FULLTAG .

docker push $FULLTAG

