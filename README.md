# elasticsearch-ik-docker
 elasticsearch docker with IK analysis plugin


```shell

$ docker pull registry.cn-hangzhou.aliyuncs.com/nodesolar/elasticsearch-ik-docker

$ docker run -d -v "$PWD/config":/elasticsearch/config nodesolar/elasticsearch-ik-docker

$ docker run -d -v "$PWD/data":/elasticsearch/data nodesolar/elasticsearch-ik-docker

$ docker run -d -v "$PWD/logs":/elasticsearch/logs nodesolar/elasticsearch-ik-docker
```