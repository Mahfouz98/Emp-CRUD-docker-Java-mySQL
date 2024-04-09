#!/bin/bash
sudo apt-get update
sudo apt install mariadb-server -y
sudo systemctl enable mariadb --now
sudo mariadb --execute="ALTER USER 'root'@'localhost' IDENTIFIED BY 'root'; GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';"
