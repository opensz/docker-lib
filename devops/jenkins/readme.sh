
# prepare准备
## docker/docker-compose环境
## 目录
/data/jenkins
/data/jenkins/home
/data/jenkins/home
# 设置目录权限给jenkins
sudo chown -R 1000:1000 /data/jenkins/home
sudo chown -R 1000:1000 /data/jenkins/home

# 安装install
## 执行
cd /data/jenkins
sudo docker-compose up -d

## 访问
http://host:2080/
查看密码 docker logs jenkins