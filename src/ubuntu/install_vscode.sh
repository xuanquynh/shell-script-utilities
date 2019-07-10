#!/usr/bin/env bash

if [ -e vscode.deb ]; then
    rm -f vscode.deb
fi

wget 'https://go.microsoft.com/fwlink/?LinkID=760868' -O vscode.deb

sudo dpkg -i vscode.deb

rm -f vscode.deb
