# This tag use ubuntu 14.04
FROM alpine:3.3

MAINTAINER Crossz (twitter.com/zhengxin)

## add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
#RUN groupadd redis && useradd -g redis redis
RUN addgroup -S redis && adduser -S -G redis redis


## -- installation --

## Initial update and install of dependency that can add apt-repos
#RUN apt-get -y update && apt-get install -y git gcc make supervisor
#
## checkout the 3.0.6 tag (Will change to 3.2 tag when it is released as stable)
#RUN git clone -b 3.0.7 https://github.com/antirez/redis.git
#
## Build redis from source
#RUN (cd /redis && make && make install)


#RUN apk add --no-cache --virtual .redisworld redis && apk del .redisworld
RUN apk add --no-cache redis




## redis.conf
## the redis in apk holds the redis.conf at /etc/redis.conf, but have to be assigned, otherwise redis-server will take default settings, which is not in any files.
ADD redis.conf /etc/redis.conf










RUN mkdir /data && chown redis:redis /data
VOLUME /data
WORKDIR /data

ADD docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 6379
CMD [ "redis-server","/etc/redis.conf" ]
