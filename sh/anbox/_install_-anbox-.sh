#!/bin/bash
# Download ```wget https://raw.githubusercontent.com/KBVE/archive/main/sh/anbox/_install_-anbox-.sh```
# Permissions ```chmod +x _install_-anbox-.sh```

LOGDIR="$(pwd)/anbox-logs"
if [ ! -d "$LOGDIR" ]; then
    mkdir "$LOGDIR"
fi

echo "[~0]  INSTALL STARTED"
echo "[1\]  CREATE  LOG"
# exec >anbox_install_log.txt 2>&1
echo "[/1]  LOG     CREATED"
echo "[2\]  APT     UPDATING"
sudo apt-get update 2>&1 | tee "$LOGDIR/log_anbox_apt_update.txt"
echo "[/2]  APT     UPDATED"
echo "[3\]  SNAP    INSTALL"
sudo snap install --devmode --beta anbox 2>&1 | tee "$LOGDIR/log_anbox_snap_install.txt"
echo "[/3]  SNAP    ANBOX       DONE"
echo "[4\]  APT     INSTALL"
sudo apt-get install android-tools-adb wget curl lzip tar unzip squashfs-tools -y 2>&1 | tee "$LOGDIR/log_anbox_apt_install.txt"
echo "[/4]  APT     DONE"
echo "!END!"
