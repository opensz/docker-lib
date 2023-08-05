FROM jenkins/jenkins:lts-jdk11

USER root

# maven/docker
RUN apt-get update && apt-get install -y maven && apt-get install -y docker.io

USER jenkins