#!/usr/bin/env bash
set -e
yum install -y httpd-tools
htpasswd -c auth root
kubectl create secret -n kube-system generic hubble-ui-auth --from-file=auth
