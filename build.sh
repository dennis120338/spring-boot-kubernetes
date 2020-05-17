#!/usr/bin/env bash
basePath=$(cd `dirname $0`; pwd)
cd ${basePath}
git pull
mvn -Dmaven.repo.local=/data0/temp/ clean package  -Dmaven.javadoc.skip=true
#docker build . -t spring-boot-kubernetes:1.0
docker build . -t swr.cn-north-1.myhuaweicloud.com/dennis120338/spring-boot-kubernetes:latest
docker push swr.cn-north-1.myhuaweicloud.com/dennis120338/spring-boot-kubernetes:latest
kubectl apply -f deploy.yaml
# Start docker
# docker run -p 8089:8080  -d spring-boot-kubernetes:1.0
# kubectl run spring-boot-kubernetes --image=spring-boot-kubernetes:1.0 --replicas=2 --port=8085 --imagePullPolicy=Never
# kubectl expose po spring-boot-kubernetes --port=8081 --target-port=8080