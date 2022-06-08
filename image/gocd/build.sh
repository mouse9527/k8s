#!/usr/bin/env bash
VERSION=v21.3.0

docker build -t registry.mouse.center:1443/gocd-agent-java17:$VERSION -f ./Dockerfile-gocd-agent-java17 .
docker push registry.mouse.center:1443/gocd-agent-java17:$VERSION

docker build -t registry.mouse.center:1443/gocd-agent-node:$VERSION -f ./Dockerfile-gocd-agent-node .
docker push registry.mouse.center:1443/gocd-agent-node:$VERSION

docker build -t registry.mouse.center:1443/gocd-server:$VERSION -f ./Dockerfile-gocd-server .
docker push registry.mouse.center:1443/gocd-server:$VERSION

docker build -t registry.mouse.center:1443/gocd-agent-kubectl:$VERSION -f ./Dockerfile-gocd-agent-kubectl .
docker push registry.mouse.center:1443/gocd-agent-kubectl:$VERSION

docker build -t registry.mouse.center:1443/gocd-agent-cleanup -f ./Dockerfile-gocd-agent-cleanup .
docker push registry.mouse.center:1443/gocd-agent-cleanup