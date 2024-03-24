echo "create cluster ..."
sleep 10

sh setup-k3d-with-argocd.sh

echo "apply deployment ..."
sleep 10

kubectl apply -f ../confs/deployment.yaml

echo "apply argo deployment ..."
sleep 10
kubectl apply -f ../confs/argo.yaml


echo "apply service ..."
sleep 10
kubectl apply -f ../confs/service.yaml


