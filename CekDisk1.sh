#!/bin/bash
disk=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')
if [ "$disk" -gt 90 ]
    then
        echo "Gawat Disk hampir penuh!!"
        elif [ "$disk" -gt 50 ]
            then 
            echo "Disk tinggal setengah bre!"
        elif [ "$disk" -lt 30 ]
            then
                echo "Masih aman sih bre disk nya"
fi