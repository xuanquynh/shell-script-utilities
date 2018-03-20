#!/bin/bash

if [ -f skype.deb ]
then
    sudo rm -rf skype.deb
fi

wget 'https://go.skype.com/skypeforlinux-64.deb' -O skype.deb

sudo dpkg -i skype.deb && sudo apt-get install -f

rm skype.deb
