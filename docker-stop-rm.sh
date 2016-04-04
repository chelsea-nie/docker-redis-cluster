#!/bin/sh

docker stop `docker ps -q`
docker rm `docker ps -aq`

#rm -rf /tmp/7000/* && rm -rf /tmp/7001/* && rm -rf /tmp/7002/* && rm -rf /tmp/7003/* && rm -rf /tmp/7004/* && rm -rf /tmp/7005/*
