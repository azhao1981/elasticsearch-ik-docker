# elasticsearch-ik-docker
 elasticsearch docker with IK analysis plugin


```shell

docker pull registry.cn-hangzhou.aliyuncs.com/nodesolar/elasticsearch-ik-docker

docker run -d \
-v "$PWD/config":/elasticsearch/config \
-v "$PWD/data":/elasticsearch/data \
-v "$PWD/logs":/elasticsearch/logs \
registry.cn-hangzhou.aliyuncs.com/nodesolar/elasticsearch-ik-docker:latest

## try: ip: 192.168.99.100


```