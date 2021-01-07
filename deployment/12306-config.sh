#!/usr/bin/env bash
kubectl create configmap -n app 12306ConfigMap --from-file=TickerConfig.py
