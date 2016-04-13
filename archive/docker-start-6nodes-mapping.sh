#!/bin/sh

docker run -d --name redis0 -p 7000:6379 -v /tmp/7000:/data cx-redis
docker run -d --name redis1 -p 7001:6379 -v /tmp/7001:/data cx-redis
docker run -d --name redis2 -p 7002:6379 -v /tmp/7002:/data cx-redis
docker run -d --name redis3 -p 7003:6379 -v /tmp/7003:/data cx-redis
docker run -d --name redis4 -p 7004:6379 -v /tmp/7004:/data cx-redis
docker run -d --name redis5 -p 7005:6379 -v /tmp/7005:/data cx-redis
