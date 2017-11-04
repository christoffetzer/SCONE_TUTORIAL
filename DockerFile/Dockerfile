FROM sconecuratedimages/crosscompilers:sgxmusl-hw-async-gcc

MAINTAINER Christof Fetzer "christof.fetzer@gmail.com"

RUN mkdir /hello

COPY hello_again.c /hello/

RUN cd /hello && gcc hello_again.c -o again

RUN printf 'Q 1\ne 0 0 0\ns 1 0 0\n' > /etc/sgx-musl.conf

CMD ["/hello/again"]
