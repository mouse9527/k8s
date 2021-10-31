#!/bin/bash

docker build -t registry.mouse.center:1443/glowroot-central:0.13.6 -f ./Dockerfile-glowroot-central .
docker push registry.mouse.center:1443/glowroot-central:0.13.6

docker build -t registry.mouse.center:1443/glowroot:0.13.6 -f ./Dockerfile-glowroot .
docker push registry.mouse.center:1443/glowroot:0.13.6

docker build -t registry.mouse.center:1443/java-app:16 -f ./Dockerfile-java-app .
docker push registry.mouse.center:1443/java-app:16

docker build -t registry.mouse.center:1443/skywalking:8.8.1 -f ./Dockerfile-skywalking .
docker push registry.mouse.center:1443/skywalking:8.8.1