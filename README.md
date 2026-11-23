# Learning bash scripting
**I learned Bash scripting to make it easier to manage servers and automate server tasks. It has proven to be incredibly useful, and here I will share some of the scripts I have created.**

---

## **1. Automatic backup**
**I created this script with the aim that important files can be backed up automatically using this script and cronjob.**

```bash
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
```

---

## **2. Check backup**
**So, the first script simply performs a backup, while the second script provides a notification as to whether a backup was carried out at that time.**
```bash
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
```

---

## **3. Check nginx**
**Now, the last script I showed is for checking services; rather than typing out a lot, it’s better to simplify it.**
```bash
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
```
**Haha, even though that last script might seem a bit useless, I’m actually really enthusiastic about learning how to use `read` right now—it’s fun to be able to have interactive prompts**

---

**Thank you, friends, for reading my repository. Although the scripts I’ve created are generally simple, I am still learning and continuing to grow.**


