#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}

artifactId=mysql
version=5.7-utf8

# docker
docker build -t ${artifactId}:${version} -f ./Dockerfile .
#docker tag  ${artifactId}:${version}  ${artifactId}:latest

# hub.docker.com/szopen
group=szopen
#docker login -u szopen -p
docker tag ${artifactId}:${version} ${group}/${artifactId}:${version}
docker push ${group}/${artifactId}:${version}

docker tag ${artifactId}:${version} ${group}/${artifactId}:5.7
docker push ${group}/${artifactId}:5.7

docker tag ${artifactId}:${version} ${group}/${artifactId}:5
docker push ${group}/${artifactId}:5