#!/usr/bin/env bash

kubeadm init --pod-network-cidr "10.244.0.0/16" --apiserver-advertise-address "192.168.20.10"
echo "export KUBECONFIG=/etc/kubernetes/admin.conf" >> ~/.bash_profile
source ~/.bash_profile

yum install bash-completion -y
kubectl completion bash >/etc/bash_completion.d/kubectl
source /usr/share/bash-completion/bash_completion