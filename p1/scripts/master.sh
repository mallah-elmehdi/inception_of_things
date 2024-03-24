#!/bin/bash
echo "*******************************************************"
echo "**************** INSTALLING_K3S_MASTER ****************"
echo "*******************************************************"

echo ""
echo "------------------------------------- UPDATE"
echo ""

sudo apt-get update
clear

echo ""
echo "------------------------------------- LIBRARIES"
echo ""

sudo apt-get install net-tools
clear

echo ""
echo "------------------------------------- INSALLING"
echo ""

sudo curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="server" sh -s - --flannel-iface eth1
sudo chmod 777 /etc/rancher/k3s/k3s.yaml
clear

echo ""
echo "------------------------------------- COPY TOKEN TO SYNC FOLDER"
echo ""

sudo cp /var/lib/rancher/k3s/server/node-token /vagrant/confs
clear