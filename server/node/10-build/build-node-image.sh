#!/usr/bin/env bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd ${DIR}



if [ ! -d "node-sass" ];then
  mkdir node-sass
fi
cp ../share/node-sass/4.12.0/*x64-64*.node ./node-sass/


artifactId=node
version=10-build

# docker
docker build -t ${artifactId}:${version} -f ./Dockerfile .
#docker tag  ${artifactId}:${version}  ${artifactId}:latest

# hub.docker.com/szopen
group=szopen
#docker login -u szopen -p
docker tag ${artifactId}:${version} ${group}/${artifactId}:${version}
#docker push ${group}/${artifactId}:${version}
