#!/bin/bash

echo "Criando o script de provisionamento de uma servidor web (Apache)."


echo "Atualizando o servidor."
apt-get update
apt-get upgrade -y
apt-get install apache2 -y
apt-get install unzip -y


echo "Download da aplicação e copiando para o diretório padrão do apache."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/

