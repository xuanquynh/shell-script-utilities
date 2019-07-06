#!/usr/bin/env bash

if [ "$USER" != "root" ]; then
    echo "The current user is \"$USER\"; sudo permissions are required."
    exit 1
fi

if [ "$(which git)" != "" ]; then
    exit 0
fi

add-apt-repository --yes ppa:git-core/ppa
apt update
apt install --yes git
