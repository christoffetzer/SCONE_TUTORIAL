FROM sconecuratedimages/crosscompilers:runtime

MAINTAINER Christof Fetzer "christof.fetzer@gmail.com"

RUN mkdir /hello

COPY dyn_hello_again /hello/


CMD SCONE_MODE=HW SCONE_ALPINE=1 SCONE_VERSION=1 /hello/dyn_hello_again
