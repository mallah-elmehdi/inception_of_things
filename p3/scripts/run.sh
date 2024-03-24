echo "create cluster ..."
sleep 40

sh setup-k3d-with-argocd.sh

echo "apply deployment ..."
sleep 40

kubectl apply -f ../confs/deployment.yaml

echo "apply argo deployment ..."
sleep 40
kubectl apply -f ../confs/argo.yaml


echo "apply service ..."
sleep 40
kubectl apply -f ../confs/service.yaml


