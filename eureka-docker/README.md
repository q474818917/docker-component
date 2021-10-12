# docker-cluster-eureka

#### 项目介绍
使用docker 构建cluster-eureka

1.打包eureka服务
进入springcloud-service 项目的子项目 springcloud-server 中
使用 mvn clean package 命令进行打包

2.构建镜像
基于 centos 构建 包含jdk ，eureka服务jar包的基础镜像
run_app.sh 基础脚本，该脚本主要是生成application.peoperties文件

3.使用docker-compose 编排集群
run_app.sh 把环境变量的值写入application.peoperties，并启动服务

待优化部分：run_app.sh 根据环境变量值判断是否是集群，若是集群进行配置文件生成，否则使用默认配置启动服务