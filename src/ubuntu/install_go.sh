#!/usr/bin/env bash

VERSION=$1

sudo apt-get update
sudo apt-get -y upgrade

curl "https://dl.google.com/go/go$VERSION.linux-amd64.tar.gz"

tar -xvf "/tmp/go$VERSION.linux-amd64.tar.gz"

sudo mv go /usr/local
