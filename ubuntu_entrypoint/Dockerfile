# This tag use ubuntu 14.04
#FROM phusion/baseimage:0.9.16
FROM ubuntu

MAINTAINER Crossz (twitter.com/zhengxin)


# Initial update and install of dependency that can add apt-repos
RUN apt-get -y update && apt-get install -y git gcc make

# checkout the 3.0.6 tag (Will change to 3.2 tag when it is released as stable)
RUN git clone -b 3.0.7 https://github.com/antirez/redis.git

# Build redis from source
RUN (cd /redis && make && make install)




#ADD redis.conf /etc/redis.conf




# add our user and group first to make sure their IDs get assigned consistently, regardless of whatever dependencies get added
RUN groupadd redis && useradd -g redis redis


RUN mkdir /data && chown redis:redis /data
VOLUME /data
WORKDIR /data

ADD docker-entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]

EXPOSE 6379
CMD [ "redis-server" ]
