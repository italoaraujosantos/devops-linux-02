#!/bin/bash
echo "Atualizar servidor e instala o servidor web!"
apt update
apt upgrade -y
apt install apache2 -y
apt install unzip -y
echo "Baixar e copiar arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

