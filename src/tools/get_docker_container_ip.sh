#!/usr/bin/env sh

docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' $1
