#!/usr/bin/env bash
set -e
yum install -y httpd-tools
htpasswd -c auth root
kubectl create secret -n app generic downloader-web-auth --from-file=auth