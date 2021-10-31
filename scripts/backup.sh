#!/bin/bash

base=$(dirname "$0")"/../"
now=$(date +"%y%m%d-%H%M%S")
mkdir -p $base/backups/$now

make stop -C $base
cp -rp $base/minecraft-data $base/backups/$now
make run -C $base
