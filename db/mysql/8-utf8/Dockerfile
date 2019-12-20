FROM mysql:8
ENV TZ Asia/Shanghai
VOLUME /docker-entrypoint-initdb.d/
COPY conf/utf8mb4.cnf /etc/mysql/conf.d/