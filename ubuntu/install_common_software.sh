#!/usr/bin/env sh

sudo apt update

sudo apt install --yes \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
