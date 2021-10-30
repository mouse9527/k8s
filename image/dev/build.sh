#!/bin/bash

docker build -t registry.mouse.center:1443/glowroot-central:0.14.0-beta -f ./Dockerfile-glowroot-central .
docker push registry.mouse.center:1443/glowroot-central:0.14.0-beta

docker build -t registry.mouse.center:1443/java-app:16 -t ./Dockerfile-java-app
docker push registry.mouse.center:1443/java-app:16