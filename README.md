# elasticsearch-ik-docker
 elasticsearch docker with IK analysis plugin


```shell

docker pull registry.cn-hangzhou.aliyuncs.com/nodesolar/elasticsearch-ik-docker

mkdir data logs 

docker run -d \
-v "$PWD/config":/elasticsearch/config \
-v "$PWD/data":/elasticsearch/data \
-v "$PWD/logs":/elasticsearch/logs \
-p 9200:9200 \
-p 9300:9300 \
--name es_dev \
registry.cn-hangzhou.aliyuncs.com/nodesolar/elasticsearch-ik-docker:latest

## try on mac : ip: 192.168.99.100
# /etc/hosts
# https://github.com/medcl/elasticsearch-analysis-ik

192.168.99.100 es.dev

curl -XPUT http://es.dev:9200/index

curl -XPOST http://es.dev:9200/index/fulltext/1 -d'
{"content":"美国留给伊拉克的是个烂摊子吗"}
'

curl -XPOST http://es.dev:9200/index/fulltext/_search  -d'
{
    "query" : { "match" : { "content" : "中国" }},
    "highlight" : {
        "pre_tags" : ["<tag1>", "<tag2>"],
        "post_tags" : ["</tag1>", "</tag2>"],
        "fields" : {
            "content" : {}
        }
    }
}
'

# 如果有问题,需要进入docker调式

curl -XPUT http://localhost:9200/index

yum whatprovides netstat
yum install net-tools
docker ps
docker commit 6c45a1085b1d elasticsearch-ik:v1

./start_es.sh

docker exec -it es_dev bash
docker stop es_dev
docker rm -f es_dev

curl -XPUT http://localhost:9200/index
```