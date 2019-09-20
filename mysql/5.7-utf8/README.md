# mysql

mysql:5.7-utf8 
* 支持中文(utf8mb4)
* 支持sql文件初始化

支持的tag：

5.7-utf8 / 5.7 / 5
```
FROM mysql:5.7
ENV TZ Asia/Shanghai
COPY conf/utf8mb4.cnf /etc/mysql/mysql.conf.d/
COPY conf/docker.cnf /etc/mysql/mysql.conf.d/
VOLUME /docker-entrypoint-initdb.d/
VOLUME /etc/mysql/conf.d/
```
# 参考

## docker official mysql

https://hub.docker.com/_/mysql

Dockfile

https://github.com/docker-library/mysql


## oracle mysql-server

https://hub.docker.com/r/mysql/mysql-server

Dockerfile

https://github.com/mysql/mysql-docker

参考docker-compose.yml
```
version: '3'

services:
  xxx-mysql:
    image: mysql/mysql-server:5.7
    container_name: xxx-mysql
    environment:
      - TZ=Asia/Shanghai
      - MYSQL_ROOT_PASSWORD=root
      - MYSQL_ROOT_HOST=%
      - MYSQL_DATABASE=db
      - MYSQL_USER=user
      - MYSQL_PASSWORD=user
    command:
      --character-set-server=utf8mb4
      --collation-server=utf8mb4_general_ci
      --explicit_defaults_for_timestamp=true
      --lower_case_table_names=0
      --max_allowed_packet=128M
      --sql-mode="STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION,NO_ZERO_DATE,NO_ZERO_IN_DATE,ERROR_FOR_DIVISION_BY_ZERO"
    volumes:
      - xxx-mysql-data:/var/lib/mysql
volumes:
  xxx-mysql-data:
``` 


