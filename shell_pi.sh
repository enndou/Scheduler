#!/bin/sh
#コンテンツは/var/www/htmlに保存する

sudo apt-get install apache2
sudo apt-get install php
sudo git clone https://github.com/nagonagoya/Scheduler.git 
sudo cp Scheduler/*　/var/www/html
sudo cp Scheduler/css/* /var/www/html
sudo cp Scheduler/favicon/* /var/www/html
sudo cp Scheduler/html/* /var/www/html
sudo cp Scheduler/js/* /var/www/html/js
cd /etc/apache2/conf-available
sudo cat security.conf | tr "ServerSignature On" "#ServerSignature On"
sudo cat security.conf | tr "#ServerSignature Off" "ServerSignature Off"
sudo service apache2 start
sudo ifconfig
