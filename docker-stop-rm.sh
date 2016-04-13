#!/bin/sh

docker stop `docker ps -q -f name=redis`
docker rm `docker ps -aq -f name=redis`

#rm -rf /tmp/7000/* && rm -rf /tmp/7001/* && rm -rf /tmp/7002/* && rm -rf /tmp/7003/* && rm -rf /tmp/7004/* && rm -rf /tmp/7005/*
