#!/bin/bash
echo "******************************************************"
echo "**************** INSTALLING_K3S_SLAVE ****************"
echo "******************************************************"

echo ""
echo "------------------------------------- UPDATE"
echo ""

sudo apt-get update
clear

echo ""
echo "------------------------------------- LIBRARIES"
echo ""

sudo apt-get install net-tools

echo ""
echo "------------------------------------- INSALLING"
echo ""

CLUSTER_TOKEN=$(sudo cat /vagrant/confs/node-token)
echo $CLUSTER_TOKEN
sudo curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="agent" K3S_URL='https://192.168.56.110:6443' K3S_TOKEN=$CLUSTER_TOKEN sh -s - --flannel-iface eth1

