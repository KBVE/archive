#!/bin/bash
# Download ```wget https://raw.githubusercontent.com/KBVE/archive/main/sh/anbox/_install_-anbox-.sh```
# Permissions ```chmod +x _install_-anbox-.sh```
sudo apt-get update
sudo snap install --devmode --beta anbox -y
sudo apt-get install android-tools-adb -y
