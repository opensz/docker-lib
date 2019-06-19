# docker-lib 简介
项目常用docker库

## 后缀cn 
表示增加中文支持，增加字体文件/share/fonts
* 宋体/新宋体  SimSun
* Arial Unicode MS  微软字体，支持中日韩

# docker 清单
## JDK

* openjdk/11-jdk-cn

docker pull szopen/openjdk:11-jdk-cn

* openjdk/8-jdk-cn

docker pull szopen/openjdk:8-jdk-cn

* openjdk/8-jdk-alpine

docker pull szopen/openjdk:8-jdk-alpine

## Application Server

* tomcat/8-jdk8-cn

docker pull szopen/tomcat:8-jdk8-cn

## Database Server

* mysql/5.7-utf8

支持中文，默认编码为utf8mb4

docker pull szopen/mysql:5.7-utf8

* mysql/8-utf8

支持中文，默认编码为utf8mb4

docker pull szopen/mysql:8-utf8