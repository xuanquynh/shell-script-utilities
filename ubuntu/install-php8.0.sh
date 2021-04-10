#!/usr/bin/env bash

apt update

apt install -y \
  php8.0-mysql \
  php8.0-sqlite \
  php8.0-zip \
  php8.0-xml \
  php8.0-gd \
  php8.0-curl \
  php8.0-bcmath \
  php8.0-xdebug \
  php8.0-mbstring \
  
echo -e "xdebug.mode = debug\nxdebug.start_with_request = yes\nxdebug.client_port = 9000" >> /etc/php/8.0/mods-available/xdebug.ini
