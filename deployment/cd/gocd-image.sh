#!/usr/bin/env bash
docker build -t docker-push.mouse.center:1443/gocd-agent-java14-node-docker - <./Dockerfile-gocd-agent
docker push docker-push.mouse.center:1443/gocd-agent-java14-node-docker
docker build -t docker-push.mouse.center:1443/gocd-server:v19.12.0 - < ./Dockerfile-gocd-server
docker push docker-push.mouse.center:1443/gocd-server:v19.12.0
