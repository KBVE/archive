#!/bin/bash
# Download ```wget https://raw.githubusercontent.com/KBVE/archive/main/sh/anbox/_install_-anbox-.sh```
# Permissions ```chmod +x _install_-anbox-.sh```
echo "[|0|] Install Started! Please wait."
echo "[1\] CREATE LOG"
# exec >anbox_install_log.txt 2>&1
echo "[/1] LOG CREATED"
echo "[2\] UPDATING"
sudo apt-get update >log_anbox_apt_update.txt 2>&1 |
echo "[/2] UPDATED"
echo "[3\] SNAP INSTALL"
sudo snap install --devmode --beta anbox >log_anbox_snap_install.txt 2>&1 |
echo "[/3] SNAP ANBOX COMPLETED"
echo "[4\] Android Tools ADB being added"
sudo apt-get install android-tools-adb -y >log_anbox_adb_install.txt 2>&1 |
echo "[/4] ADB Completed"
echo "!END!"
