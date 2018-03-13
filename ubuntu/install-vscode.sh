#!/bin/bash

if [ -f vscode.deb ]
then
    sudo rm -rf vscode.deb
fi

wget 'https://go.microsoft.com/fwlink/?LinkID=760868' -O vscode.deb

sudo dpkg -i vscode.deb && sudo apt-get install -f

rm vscode.deb
