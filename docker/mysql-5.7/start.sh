#!/usr/bin/env bash

docker volume create mysql-5.7

docker run --name mysql-5.7 \
    -e MYSQL_ROOT_PASSWORD=secret \
    -e MYSQL_DATABASE=test \
    -e MYSQL_USER=seriquynh \
    -e MYSQL_PASSWORD=secret \
    --detach -p 33057:3306 \
    -v mysql-5.7:/var/lib/mysql \
    mysql:5.7
