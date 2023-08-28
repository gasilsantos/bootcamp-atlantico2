#!/bin/bash 

echo "atualizando o servidor..."

sudo apt-get update -y
sudo apt-get upgrade -y

echo "instalando o apache..."

sudo apt-get install apache2 -y 

sudo apt-get install unzip -y

echo "instalando a aplicação..."

cd /tmp
sudo git clone https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
cd linux-site-dio
sudo cp -R * /var/www/html

echo "fim do código..."
