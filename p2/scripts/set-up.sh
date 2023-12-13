sudo apt-get update 
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --flannel-iface eth1 && chmod 777 /etc/rancher/k3s/k3s.yaml
kubectl apply -f configs/app1-deployment.yaml -f configs/app2-deployment.yaml -f configs/app3-deployment.yaml -f configs/ingress.yaml 
