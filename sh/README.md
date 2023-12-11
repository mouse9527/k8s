1. 安装 cri

```shell
sh cri-install.sh
vim /etc/containerd/config.toml 
# 修改CgroupDriver为systemd see: https://k8s.huweihuang.com/project/runtime/containerd/install-containerd
# sandbox_image = "registry.aliyuncs.com/google_containers/pause:3.9"
systemctl restart containerd
```

2. 安装 kubeadm,kubectl,kubelet
```shell
sh kubeadm-install.sh
```