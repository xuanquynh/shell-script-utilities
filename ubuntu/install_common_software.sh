#!/usr/bin/env bash

if [ "$USER" != "root" ]; then
    echo "The current is \"$USER\", sudo permissions are required."
    exit 1
fi

apt update

if [ "$(which curl)" == "" ]; then
    apt install --yes curl
fi



