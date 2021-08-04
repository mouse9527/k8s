#!/usr/bin/env bash

kubectl create secret -n app generic kubectl-secret --from-file=config=/etc/kubernetes/admin.conf
