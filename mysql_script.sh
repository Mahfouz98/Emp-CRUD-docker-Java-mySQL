#!/bin/bash
sudo apt-get update
sudo apt install mariadb-server -y
sudo systemctl enable mariadb --now
sudo mariadb --execute="ALTER USER 'root'@'localhost' IDENTIFIED BY 'root'; GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost';"
sudo mariadb --execute="CREATE USER 'ahmed'@'%' IDENTIFIED BY 'mahfouz123'; GRANT ALL PRIVILEGES ON userdb.* TO 'ahmed'@'%';"
sudo mariadb --execute="FLUSH PRIVILEGES;"
sudo bash -c 'echo "bind-address = 0.0.0.0" >> /etc/mysql/mariadb.conf.d/60-galera.cnf '
sudo systemctl restart mariadb
sudo ufw allow in on eth0 to any port 3306