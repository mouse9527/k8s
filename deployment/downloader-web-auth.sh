#!/usr/bin/env bash
set -e
yum install -y htpasswd
htpasswd -c downloader-web-auth downloader
kubectl create secret generic basic-auth --from-file=downloader-web-auth