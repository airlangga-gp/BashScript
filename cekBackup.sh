#!/bin/bash
count=0
hi="/home/a3208/backup"
HARIini=$(date +%Y-%m-%d_%H-%M-%S)

until ls "$hi/SF${HARIini}" >/dev/null 2>&1
do
    echo "Belum ada"
    sleep 1
    exit 1
done    
    echo "file ada dan backup hari ini done"
