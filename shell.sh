#!/bin/sh

docker run -d --name php70-apache php:7.0-apache
git clone https://github.com/nagonagoya/Scheduler.git
cp Scheduler/* /var/www/html
mkdir /var/www/html/css
mkdir /var/www/html/favicon
mkdir /var/www/html/html
mkdir /var/www/html/js
cp Scheduler/css/* /var/www/html/css
cp Scheduler/favicon/* /var/www/html/favicon
cp Scheduler/html/* /var/www/html/html
cp Scheduler/js/* /var/www/html/js
