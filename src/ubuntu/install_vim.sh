#!/usr/bin/env bash

if [ "$(which vim)" != "" ]; then
   exit 0
fi

sudo apt update

sudo apt install vim
