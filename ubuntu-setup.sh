#!/bin/bash

set -e  # Exit on any error

export DEBIAN_FRONTEND=noninteractive

chmod +x update.sh
./update.sh

# install docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
rm get-docker.sh
sudo usermod -aG docker $USER

#install nodejs
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
sudo apt-get install -y nodejs

#install python3
sudo apt install -y python3-pip build-essential libssl-dev libffi-dev python3-dev python3-venv

# install nvim
chmod +x nvim-setup.sh
./nvim-setup.sh

# install minikube
chmod +x minikube-install.sh
./minikube-install.sh
