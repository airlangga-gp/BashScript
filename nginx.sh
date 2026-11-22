#!/bin/bash
read -p "pilih (start/stop/restart/enable/disable) " aksi
if [ "$aksi" == start ]
then 
    sudo systemctl start nginx

elif [ "$aksi" == stop ]
then 
    sudo systemctl stop nginx

elif [ "$aksi" == restart ]
then 
    sudo systemctl restart nginx


elif [ "$aksi" == enable ]
then 
     sudo systemctl enable nginx

elif [ "$aksi" == disable ]
then
    sudo systemctl disable nginx

else 
    echo "salah input"
fi





