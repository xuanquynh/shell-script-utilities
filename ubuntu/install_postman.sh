#!/usr/bin/env sh

wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz

sudo rm -rf /opt/Postman
sudo tar -xzf postman.tar.gz -C /opt
sudo ln -sf /opt/Postman/Postman /usr/bin/postman

rm -f postman.tar.gz
