#!/usr/bin/env bash

# remove if installed, if not no problem
sudo apt-get purge mongodb-compass
sudo apt-get autoremove

# dowload, install, delete file
wget https://downloads.mongodb.com/compass/mongodb-compass_1.15.1_amd64.deb -O mongodb-compass_1.15.1_amd64.deb
sudo dpkg -i mongodb-compass_1.15.1_amd64.deb
rm mongodb-compass_1.15.1_amd64.deb

#run
mongodb-compass
