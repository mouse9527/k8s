#!/usr/bin/env bash
set -e
yum install -y httpd-tools
htpasswd -c downloader-web-auth downloader
kubectl create secret -n app generic downloader-web-auth --from-file=downloader-web-auth