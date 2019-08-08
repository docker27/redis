#!/bin/bash

echo "stop redis ..."
pid=`ps -aux|grep redis| grep -v grep | awk '{print $2}'`
if [ -n "$pid" ]; then
	su - dev -c "kill -9 $pid"
	echo "kill pid : $pid"
fi

su - dev -c '/usr/local/redis/redis-4.0.11/src/redis-server /usr/local/redis/redis-4.0.11/redis.conf &'
echo "redis restart"
