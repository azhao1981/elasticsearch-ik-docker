#!/bin/bash
NAME=es_dev
docker run -d \
-v "$PWD/config":/elasticsearch/config \
-v "$PWD/data":/elasticsearch/data \
-v "$PWD/logs":/elasticsearch/logs \
-p 9200:9200 \
-p 9300:9300 \
--name $NAME \
elasticsearch-ik:v1