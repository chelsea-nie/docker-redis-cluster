#!/bin/sh

docker run --net=host -d --name redis0 rediscluster-7000
docker run --net=host -d --name redis1 rediscluster-7001
docker run --net=host -d --name redis2 rediscluster-7002
docker run --net=host -d --name redis3 rediscluster-7003
docker run --net=host -d --name redis4 rediscluster-7004
docker run --net=host -d --name redis5 rediscluster-7005
