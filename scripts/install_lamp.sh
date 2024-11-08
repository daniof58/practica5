#!/bin/bash

# Muestra todos los comandos que se han ejeutado

set -ex

# Actualización de repositorios
apt update

# Actualización de paquetes
# sudo apt upgrade  

# Instalamos el servidor Web apache

apt install apache2 -y

#instalar mysql server
apt install mysql-server -y

#Instalar php
apt install php libapache2-mod-php php-mysql -y

#Reiniciamos el servicio apache
systemctl restart apache2

# Modificamos el propietario y el grupo del directo /var/www/html
chown -R www-data:www-data /var/www/html
