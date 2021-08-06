#!/usr/bin/env bash
docker build --build-arg https_proxy=http://win10:7890 -t registry.mouse.center:1443/gocd-agent-java14-node-docker -f ./Dockerfile-gocd-agent .
docker push registry.mouse.center:1443/gocd-agent-java14-node-docker

docker build -t registry.mouse.center:1443/gocd-server:v21.1.0 -f ./Dockerfile-gocd-server .
docker push registry.mouse.center:1443/gocd-server:v21.1.0

docker build -t registry.mouse.center:1443/gocd-agent-kubectl -f ./Dockerfile-gocd-agent-kubectl .
docker push registry.mouse.center:1443/gocd-agent-kubectl
