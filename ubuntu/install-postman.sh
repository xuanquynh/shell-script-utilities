
wget https://dl.pstmn.io/download/latest/linux64 -O postman.tar.gz

sudo rm -rf /opt/Postman &&
    tar -xzf postman.tar.gz -C /opt &&
    ln -s /opt/Postman/Postman /usr/bin/postman --force

rm postman.tar.gz
