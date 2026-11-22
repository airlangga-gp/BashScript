#!/bin/bash
read -p " (install/start/status/stop): " apc
if [ "$apc" == install ]
then
    sudo apt install apache2

elif [ "$apc" == start ]
then
    sudo systemctl start apache2

elif [ "$apc" == status ]
then
    sudo systemctl status apache2

elif [ "$apc" == stop ]
then
    sudo systemctl stop apache2

else
    echo "salah input"
fi


