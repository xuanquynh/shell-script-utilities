#!/usr/bin/env bash

if [ "$USER" != "root" ]; then
    echo "The current user is \"$USER\", sudo permissions are required."
    exit 1
fi

if [ -e vscode.deb ]; then
    rm -f vscode.deb
fi

wget 'https://go.microsoft.com/fwlink/?LinkID=760868' -O vscode.deb > /dev/null 2>&1

dpkg -i vscode.deb

rm -f vscode.deb

