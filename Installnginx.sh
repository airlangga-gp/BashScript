#!/bin/bash
if ! sudo apt update -y
then 
    echo "update gagal"
    exit 1
fi

if ! sudo apt upgrade -y
then 
    echo "upgrade gagal"
    exit 1
fi

if ! sudo apt install nginx -y
then
    echo "gagal install nginx"
    exit 1
fi
sudo systemctl status nginx
sudo systemctl start nginx