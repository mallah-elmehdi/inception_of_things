sudo apt-get update 
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --flannel-iface eth1 && chmod 777 /etc/rancher/k3s/k3s.yaml
kubectl apply -f confs/app1-deployment.yaml -f confs/app2-deployment.yaml -f confs/app3-deployment.yaml -f confs/ingress.yaml 
