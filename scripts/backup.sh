#!/bin/bash

base=$(dirname "$0")"/../"
now=$(date +"%y%m%d-%H%M%S")
mkdir -p $base/backups/$now/minecraft-data
cp -rp $base/minecraft-data $base/backups/$now/minecraft-data
