#!/usr/bin/env bash
docker build -t docker-push.mouse.center:1443/gocd-agent-java14-node-docker - <./Dockerfile-gocd-agent
docker push docker-push.mouse.center:1443/gocd-agent-java14-node-docker
