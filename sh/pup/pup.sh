#!/bin/bash

# Simple script to check whether a specific port is up
# Loops until it is
# Nicknamed pup, just don't let zsh tell you what to autocomplete it to
# Created by https://github.com/jzanecook

if [ $# -ne 2 ]
then
  echo -e "Error: Missing Arguments\n\nUsage: $0 HOST PORT"
  exit 1
fi

up=0

while [ $up -eq 0 ]
do
  if nc -zvw1 $1 $2 2>&1 | grep -q succeeded; then
    echo "$(date +'%T') :: $1:$2 :: Up"
    up=1
  else
    echo "$(date +'%T') :: $1:$2 :: Still down"
  fi
  sleep 1
done
