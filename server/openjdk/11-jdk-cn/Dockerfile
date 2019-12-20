FROM openjdk:11-jdk-stretch
ENV LANG C.UTF-8
COPY fonts /usr/share/fonts
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone
