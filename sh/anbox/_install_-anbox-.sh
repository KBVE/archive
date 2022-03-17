#!/bin/bash
# Download ```wget https://raw.githubusercontent.com/KBVE/archive/main/sh/anbox/_install_-anbox-.sh```
# Permissions ```chmod +x _install_-anbox-.sh```

if [ ! "$(which sudo)" ]; then
	SUDO=""
else
	SUDO=$(which sudo)
fi


echo "[~0]  INSTALL STARTED"
echo "[1\]  CREATE  DIR"

KBVE="$(pwd)/kbve"
if [ ! -d "$KBVE" ]; then
    $SUDO mkdir "$KBVE"
fi

LOGDIR="$KBVE/logs"
if [ ! -d "$LOGDIR" ]; then
    $SUDO mkdir "$LOGDIR"
fi


echo "[/1]  DIR     CREATED"

echo "[2\]  APT     UPDATING"
$SUDO apt-get update 2>&1 | tee "$LOGDIR/log_anbox_apt_update.txt"
echo "[/2]  APT     UPDATED"

echo "[3\]  SNAP    INSTALL"
$SUDO snap install --devmode --beta anbox 2>&1 | tee "$LOGDIR/log_anbox_snap_install.txt"
echo "[/3]  SNAP    ANBOX       DONE"

echo "[4\]  APT     INSTALL"
$SUDO apt-get install android-tools-adb wget curl lzip tar unzip squashfs-tools -y 2>&1 | tee "$LOGDIR/log_anbox_apt_install.txt"
echo "[/4]  APT     DONE"

echo "[5\]  PLAY    INSTALL"
$SUDO cd "$KBVE"
$SUDO wget https://raw.githubusercontent.com/geeks-r-us/anbox-playstore-installer/master/install-playstore.sh
$SUDO chmod +x install-playstore.sh
$SUDO bash ./install-playstore.sh 2>&1 | tee "$LOGDIR/log_anbox_play_install.txt"
echo "[/5]  PLAY    DONE"

echo "[L] Launch"
$SUDO anbox.appmgr

echo "!END!"
