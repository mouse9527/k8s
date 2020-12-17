#!/usr/bin/env bash
kubectl create secret docker-registry docker-secret \
  --docker-server=docker-repository.k8s.mouse.center:1443 \
  --docker-username=mouse \
  --docker-password=Hz970210