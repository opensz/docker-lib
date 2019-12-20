FROM mysql:5.7
ENV TZ Asia/Shanghai
COPY conf/utf8mb4.cnf /etc/mysql/mysql.conf.d/
COPY conf/docker.cnf /etc/mysql/mysql.conf.d/
VOLUME /docker-entrypoint-initdb.d/
VOLUME /etc/mysql/conf.d/