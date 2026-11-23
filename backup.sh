#!/bin/bash
SourceD=/home/a3208/penting
BackupD=/home/a3208/backup
File=SF$(date +%Y-%m-%d_%H-%M-%S)

cp $SourceD/penting.txt  $BackupD/$File
    if [ "$?" -eq 0 ]
        then
            echo "Backup Berhasil"
        else
            echo "Gagal Backup"
    fi