#!/bin/bash

docker rm -f redis_lastest
docker rmi qianchun27/redis:lastest
docker build -t qianchun27/redis:lastest -f Dockerfile .
docker run --privileged -t -d -p 6379:6379 --name redis_lastest qianchun27/redis:lastest /usr/sbin/init;
docker network connect wind_net redis_lastest
docker exec -it redis_lastest /bin/bash
