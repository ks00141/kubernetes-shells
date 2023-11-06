#!/bin/bash
sudo kubeadm token create --print-join-command > ./join_script.sh
sudo sed -i '1 s/^/sudo /' ./join_script.sh
sudo sed -i '1i #!/bin/bash' ./join_script.sh
