#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}


artifactId=openjdk
version=8-jdk-alpine

# docker
docker build -t ${artifactId}:${version} -f ./Dockerfile .
#docker tag  ${artifactId}:${version}  ${artifactId}:latest

# hub.docker.com/szopen
group=szopen
#docker login -u szopen -p
docker tag ${artifactId}:${version} ${group}/${artifactId}:${version}
docker push ${group}/${artifactId}:${version}
