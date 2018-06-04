#!/bin/sh
#Dockerを立ち上げてから実行する。
#~/docker/php70-apache/wwwにコンテンツを配置

git clone https://github.com/nagonagoya/Scheduler.git ~/docker/nagoya/www
docker run -d -p 80:80 -v ~/docker/nagoya/www/Scheduler:/var/www/html --name nagoya junendocreater/php
