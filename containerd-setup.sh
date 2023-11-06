#!/bin/bash
sudo apt update
sudo apt install -y containerd.io
cat << EOF | sudo tee -a /etc/containerd/config.toml
[plugins."io.containerd.grcp.v1.cri".containerd.runtimes.runc]
[plugins."io.containerd.grcp.v1.cri".containerd.runtimes.runc.options]
SystemCgroup=true
EOF
sudo sed -i 's/^disabled_plugins \=/\#disabled_plugins \=/g' /etc/containerd/config.toml
sudo systemctl restart containerd
ls /var/run/containerd/containerd.sock
