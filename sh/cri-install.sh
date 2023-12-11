#!/usr/bin/env bash
set -e
yum remove docker \
  docker-client \
  docker-client-latest \
  docker-common \
  docker-latest \
  docker-latest-logrotate \
  docker-logrotate \
  docker-engine \
  cri-docker.socket

sudo rm -rf /var/lib/docker
sudo rm -rf /var/lib/containerd
yum install -y yum-utils

yum-config-manager \
  --add-repo \
  https://download.docker.com/linux/centos/docker-ce.repo

yum install -y docker-ce docker-ce-cli containerd.io
containerd config default > /etc/containerd/config.toml

#wget https://github.com/Mirantis/cri-dockerd/releases/download/v0.3.8/cri-dockerd-0.3.8-3.el7.x86_64.rpm
#
#rpm -ivh cri-dockerd-0.3.8-3.el7.x86_64.rpm
#
#systemctl daemon-reload
#systemctl enable --now cri-docker.socket

systemctl start docker
systemctl enable docker
