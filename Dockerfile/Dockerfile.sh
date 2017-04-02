#!/bin/bash
#
# (C) Christof Fetzer, 2017
#

set -x -e


export TAG="latest"
export IMAGE_NAME="sconecuratedimages/helloworld"

CONTAINER_ID=`docker run -d -it --device=/dev/isgx  -v $(pwd):/mnt sconecuratedimages/crosscompilers bash -c "
set -e
sgxmusl-hw-async-gcc /mnt/hello_world.c  -o /usr/local/bin/sgx_hello_world
"`

docker run --device=/dev/isgx $IMAGE_NAME:$TAG

IMAGE_ID=$(docker commit -p -c 'CMD sgx_hello_world' $CONTAINER_ID $IMAGE_NAME:$TAG)

