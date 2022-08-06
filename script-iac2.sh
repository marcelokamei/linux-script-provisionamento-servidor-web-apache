!#/bin/bash

echo "Atualizando servidor..."
apt-get update
apt-get upgrade
apt-get install apache2 -y
apt-get install unzip -y

echo "Fazendo download e criando arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-man
cp -R * /var/www/html/
