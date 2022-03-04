#!/bin/bash
# Dont Forget to chmod +x
sudo snap install nmap
sudo snap connect nmap:network-control
sudo nmap 127.0.0.1 -p-
