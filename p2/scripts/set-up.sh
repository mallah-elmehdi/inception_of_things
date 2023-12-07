sudo apt-get update 
sudo apt-get install kubectl 
curl -sfL https://get.k3s.io | sh - && cp /etc/rancher/k3s/k3s.yaml ~/.kube/config && export KUBECONFIG=~/.kube/config
kubectl apply -f $HOME/configs/app1-deployment.yaml -f $HOME/configs/app2-deployment.yaml -f $HOME/configs/app3-deployment.yaml -f $HOME/configs/ingress.yaml 