#!/usr/bin/env bash
kubectl create secret -n cd generic kubectl-secret --from-file=config=/etc/kubernetes/admin.conf
