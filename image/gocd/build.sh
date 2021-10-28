#!/usr/bin/env bash
docker build -t registry.mouse.center:1443/gocd-agent-java-node-docker:java17_gradle7.2 -f ./Dockerfile-gocd-agent .
docker push registry.mouse.center:1443/gocd-agent-java-node-docker:java17_gradle7.2

docker build -t registry.mouse.center:1443/gocd-server:v21.1.0 -f ./Dockerfile-gocd-server .
docker push registry.mouse.center:1443/gocd-server:v21.1.0

docker build -t registry.mouse.center:1443/gocd-agent-kubectl -f ./Dockerfile-gocd-agent-kubectl .
docker push registry.mouse.center:1443/gocd-agent-kubectl
