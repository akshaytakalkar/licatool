#!/bin/bash
mkdir $entry3 -p;
echo $entry1":/"$entry2"      "$entry3 "nfs      defaults        0 0" >> /etc/fstab

mount -a
df -h
 
nfsok=$(df -h | grep "$entry1");
if [ -z $nfsok ] ;then
	kdialog --error "Client nfs not mounted"	

else
	kdialog --msgbox "Client as been mounted"
	nautilus $entry3
fi



pid=$(ps -h | grep "nfs_client.glade" | cut -f2 -d " " | head -1 ); kill -9 $pid
