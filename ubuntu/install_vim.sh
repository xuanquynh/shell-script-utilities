#!/usr/bin/env sh

if [ "$(which vim)" != "" ]; then
   exit 0
fi

sudo apt update

sudo apt install vim
