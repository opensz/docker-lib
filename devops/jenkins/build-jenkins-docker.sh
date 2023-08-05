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
LOGIN_FILE_PATH="${DIR}/../../docker-login.sh"

if [ -f "$LOGIN_FILE_PATH" ]; then
  #chmod +x $LOGIN_FILE_PATH
  sh $LOGIN_FILE_PATH
fi

docker tag ${artifactId}:${version} ${group}/${artifactId}:${version}
docker tag ${artifactId}:${version} ${group}/${artifactId}

docker push ${group}/${artifactId}:${version}
docker push ${group}/${artifactId}