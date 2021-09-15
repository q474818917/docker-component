# redis-cluster-docker
基于docker compose构建redis集群环境。 基于docker compose构建redis集群环境。 


redis-cluster-docker
A redis cluster environment is built based on docker compose.

代码实现源自这篇博文，理论及过程可参考 [Docker-compose之Redis Cluster集群](https://blog.csdn.net/weixin_50236329/article/details/109771983)

## 简介

### redis-cluster.tmpl模板
在docker环境中，配置文件映射宿主机的时候，(宿主机)必须有配置文件。大家可以根据自己的需求定制配置文件。
下边是我的配置文件 redis-cluster.tmpl


## 安装步骤

- 1、redis-cluster.tmpl模板修改，修改IP、密码设置等等；
- 2、执行 redis-cluster-config.sh
```shell script
chmod a+x redis-cluster-config.sh
./redis-cluster-config.sh
```
会根据redis-cluster.tmpl模板重新生成cluster文件[7001\7002...]。

后面会自动启动创建redis集群节点。
