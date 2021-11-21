#!/bin/bash


# config

now=$(date +"%y%m%d-%H%M%S")
delete_n_old_backups=5


base=$(dirname "$0")"/../"


# delete olds

echo Deleting old backups...

limit=$(expr $delete_n_old_backups - 1)  # n backups to conserve
delete_auxiliar=/tmp/backups_delete_auxiliar
delete_files=/tmp/backups_delete_files

files=$(ls -dl $base/backups/* | awk '{print $9}')
n_files=$(echo "$files" | wc -l)
n_delete=$(expr $n_files - $limit)

if [ $n_delete -ge 0 ]; then   

    echo "ls -d $base/backups/* | head -$n_delete" > $delete_auxiliar
    bash $delete_auxiliar > $delete_files

    IFS=$'\n'
    for f in $(cat $delete_files) ; do 
      rm -rf "$f"
    done
fi

echo Deleted $n_delete old backups


# do backup

echo Doing backup

mkdir -p $base/backups/$now
make stop -C $base
cp -rp $base/minecraft-data $base/backups/$now
make run -C $base

echo Done! Backups found next:
ls -dl $base/backups/*
