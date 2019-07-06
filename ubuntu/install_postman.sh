#!/usr/bin/env bash

if [ "$USER" != "root" ]; then
    echo "The current user is \"$USER\", sudo permissions are required."
    exit 0
fi

wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz > /dev/null 2>&1

rm -rf /opt/Postman
tar -xzf postman.tar.gz -C /opt

rm -f postman.tar.gz

