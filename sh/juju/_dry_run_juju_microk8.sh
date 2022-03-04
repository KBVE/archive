#!/bin/bash
# Source: Juju Docs
sudo snap install microk8s --classic
sudo usermod -a -G microk8s $USER
su - $USER
microk8s.enable dns storage
sudo snap install juju --classic
juju bootstrap microk8s micro
#removal
#juju kill-controller -y -t 0 micro
#microk8s.reset
#sudo snap remove microk8s
#sudo snap remove juju
