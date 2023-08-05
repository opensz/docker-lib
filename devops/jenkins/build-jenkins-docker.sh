#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}


artifactId=jenkins
version=lts-jdk11


# docker
docker build -t ${artifactId}:${version} -f ./Dockerfile .

# hub.docker.com/szopen
group=szopen
#docker login -u szopen -p
docker tag ${artifactId}:${version} ${group}/${artifactId}:${version}
docker push ${group}/${artifactId}:${version}

docker tag ${artifactId}:${version} ${group}/${artifactId}:latest
docker push ${group}/${artifactId}:latest
