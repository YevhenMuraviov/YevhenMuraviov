FROM alpine:edge as BUILD
MAINTAINER Yevhen Muraviov <ujenum@gmail.com>
RUN apk add --no-cache netcat-openbsd
COPY ./index ./
COPY ./webserver.sh /
CMD /bin/sh /webserver.sh
EXPOSE 8080
