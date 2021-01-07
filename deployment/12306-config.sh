#!/usr/bin/env bash
kubectl create configmap -n app config-map-12306 --from-file=TickerConfig.py
