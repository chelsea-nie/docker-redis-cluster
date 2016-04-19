# This tag use ubuntu 14.04
#FROM phusion/baseimage:0.9.16
FROM ubuntu

MAINTAINER Crossz (twitter.com/zhengxin)

# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
RUN groupadd redis && useradd -g redis redis


## -- installation --

# Initial update and install of dependency that can add apt-repos
RUN apt-get -y update && apt-get install -y git gcc make && apt-get clean && apt-get autoclean

# checkout the 3.0.6 tag (Will change to 3.2 tag when it is released as stable)
RUN git clone -b 3.0.7 https://github.com/antirez/redis.git

# Build redis from source
RUN (cd /redis && make && make install)


##RUN apk add --no-cache --virtual .redisworld redis && apk del .redisworld
#RUN apk add --no-cache redis





## redis.conf
## the redis git version holds the redis.conf at /redis/redis.conf
#ADD redis.conf /etc/redis.conf






RUN mkdir /data && chown redis:redis /data
VOLUME /data
WORKDIR /data

ADD docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 6379
CMD [ "redis-server" ]
