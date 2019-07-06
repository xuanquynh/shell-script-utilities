#!/usr/bin/env bash

if [ $USER != "root" ]; then
    echo "The current user is \"$USER\"; \"sudo\" permissions is required"
fi

if [ "$(which vim)" != "" ]; then
   exit 0
fi

sudo apt update

sudo apt install vim
