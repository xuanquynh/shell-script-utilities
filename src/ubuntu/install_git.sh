#!/usr/bin/env bash

if [ "$(which git)" != "" ]; then
    exit 0
fi

sudo add-apt-repository --yes ppa:git-core/ppa
sudo apt update
sudo apt install --yes git
