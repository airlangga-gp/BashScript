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

read -p "nama folder: " folder
if [ -z "$folder" ]
    then
        echo "nama harus diisi"
fi

if ! mkdir "$folder"
    then 
        echo "gagal membuat folder "$folder""
        exit 1
fi 
cd "$folder"
if [ "$?" -ne 0 ]
    then
        echo "ggal masuk folder "$folder""
fi

touch cuki.txt
touch kiwir.txt

read -p "nama folder ke2?: " fd
if [ -z "$fd" ]
    then
        echo "folder harus ada isi"
        exit 1
fi 
if ! mkdir "$fd"
    then
    echo "gagal buat folder "$fd""
    exit 1
fi
cd "$fd"
if [ "$?" -ne 0 ]
    then
        echo "ggal masuk folder "$folder""
fi
touch kicir.txt
nano kicir.txt
