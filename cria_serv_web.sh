#!/bin/bash
echo "Atualizando servidor ..."
apt-get update -y
apt-get upgrade -y

echo "instalando ferramentas do servidor ..."
apt-get install apache2 -y
apt-get install unzip -y

cd /tmp
wget "https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip"
unzip main.zip
cd linux-site-dio-main
cp -r -v * /var/www/html/

echo "Finalizado."


