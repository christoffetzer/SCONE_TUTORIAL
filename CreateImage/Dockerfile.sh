#!/bin/bash
#
# (C) Christof Fetzer, 2017
#

set -x -e


export TAG="latest"
export IMAGE_NAME="sconecuratedimages/helloworld"

CONTAINER_ID=`docker run -d -it --device=/dev/isgx  -v $(pwd):/mnt sconecuratedimages/crosscompilers:scone bash -c "
set -e
printf 'Q 1\ne 0 0 0\ns 1 0 0\n' > /etc/sgx-musl.conf
scone-gcc /mnt/hello_world.c  -o /usr/local/bin/sgx_hello_world
"`
sleep 4

IMAGE_ID=$(docker commit -p -c 'CMD /usr/local/bin/sgx_hello_world' $CONTAINER_ID $IMAGE_NAME:$TAG)

docker run --device=/dev/isgx $IMAGE_NAME:$TAG

docker push $IMAGE_NAME:$TAG

