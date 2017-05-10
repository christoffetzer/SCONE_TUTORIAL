FROM sconecuratedimages/crosscompilers:sgxmusl-hw-async-gcc

MAINTAINER Christof Fetzer "christof.fetzer@gmail.com"

COPY hello_again.c /hello/

RUN cd /hello && gcc hello_again.c -o again

CMD ["/hello/again"]
