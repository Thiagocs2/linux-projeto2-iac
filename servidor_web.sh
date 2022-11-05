#!/bin/bash
echo "Atualizando o servidor..."
apt update
apt upgrade -y

echo "Instalando Apache2..."
apt install apache2 -y

echo "Instalando Unzip..."
apt install unzip -y

echo "Baixando arquivo main.zip..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

echo "Descompactando o arquivo main.zip..."
unzip main.zip

echo "Copiando arquivos para o diretório /var/www/html"
cd linux-site-dio-main
cp -R * /var/www/html/

echo "Processo finalizado com sucesso!"
