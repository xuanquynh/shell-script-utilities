#!/usr/bin/env bash

if [ "$USER" != "root" ]; then
    echo "The current user is \"$USER\", sudo permissions are required."
    exit 1
fi

apt update

apt-get install --yes \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

