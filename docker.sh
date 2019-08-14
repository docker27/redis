#!/bin/bash

docker rm -f redis
docker rmi qianchun27/redis:4.0.11
docker build -t qianchun27/redis:4.0.11 -f Dockerfile .
docker run --privileged -t -d -p 6379:6379 --name redis qianchun27/redis:4.0.11 /usr/sbin/init;
docker network connect wind_net redis
docker exec -it redis /bin/bash
