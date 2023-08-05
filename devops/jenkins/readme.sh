
# prepare准备
## docker/docker-compose环境
## 目录
/data/jenkins
/data/jenkins/home
/data/jenkins/plugins
/data/maven_repo
# 设置目录权限给jenkins
sudo chown -R 1000:1000 /data/jenkins/home
sudo chown -R 1000:1000 /data/jenkins/plugins
# 共用本地maven仓库
# 将jenkins中.m2映射到/data/maven_repo

# 复制docker-compose.yml文件到/data/jenkins

# 安装install
## 执行
cd /data/jenkins
sudo docker-compose up -d

## 访问
http://host:2080/
查看密码 docker logs jenkins

## 支持maven/docker
- 选择已安装好的image szopen/jenkins:latest
- 容器内执行
'''
docker exec -u 0 -it jenkins bash
apt-get update
apt-get install -y maven
apt-get install -y docker.io
exit
'''