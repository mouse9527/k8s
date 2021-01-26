#!/usr/bin/env bash

kubectl create secret -n app generic gocd-agent-kubectl-secret --from-file=config=/etc/kubernetes/admin.conf
