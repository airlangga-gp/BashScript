#!/bin/bash
read -p " (start/stop/restart/status): " aksi
if [ "$aksi" == "start" ]
then
    sudo systemctl start sshd.service

elif [ "$aksi" == "stop" ]
then
    sudo systemctl stop sshd.service

elif [ "$aksi" == "restart" ]
then
    sudo systemctl restart sshd.service

elif [ "$aksi" == "status" ]
then
    sudo systemctl status sshd.service
    if [ $? -eq 0 ]
        then
            echo "berhasil boy"
        else 
            echo "yah awoakaowka gagal"
            exit 1 
    fi
else
    echo "input tak sesuai bro"
fi