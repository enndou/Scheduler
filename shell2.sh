#!/bin/sh
#Dockerを立ち上げてから実行する。
#~/docker/php70-apache/wwwにコンテンツを配置

docker run -d -p 80:80 -v ~/docker/php70-apache/www:/var/www/html --name php70-apache php:7.0-apache
git clone https://github.com/nagonagoya/Scheduler.git
cp Scheduler/* ~/docker/php70-apache/www
mkdir ~/docker/php70-apache/www/css
mkdir ~/docker/php70-apache/www/favicon
mkdir ~/docker/php70-apache/www/html
mkdir ~/docker/php70-apache/www/js
cp Scheduler/css/* ~/docker/php70-apache/www/css
cp Scheduler/favicon/* ~/docker/php70-apache/www/favicon
cp Scheduler/html/* ~/docker/php70-apache/www/html
cp Scheduler/js/* ~/docker/php70-apache/www/js
