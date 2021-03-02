#!/usr/bin/env sh

if [ -e skype.deb ]
then
    rm -f skype.deb
fi

wget 'https://go.skype.com/skypeforlinux-64.deb' -O skype.deb

sudo dpkg -i skype.deb

rm skype.deb
