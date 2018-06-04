#!/bin/sh
#Dockerを立ち上げてから実行する。
#~/docker/nagoya/wwwにコンテンツを配置
#ディレクトリがない場合は自動で作成する
git clone https://github.com/nagonagoya/Scheduler.git ~/docker/nagoya/www
docker run -d -p 80:80 -v ~/docker/nagoya/www:/var/www/html --name nagoya junendocreater/php
