#!/usr/bin/env bash

if [ "$1" = "--help" ]; then
    echo "Run \"utils get-docker-container-ip <container_id_or_name>\" to get the container ip"
    echo ""
    echo "For Example:"
    echo "  utils get-docker-container-ip my_nginx_proxy"
    exit 0
fi

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1
