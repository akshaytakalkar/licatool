#!/bin/bash
yum install cifs-utils -y

echo "//"$entry1"/"$entry2" "$entry3" cifs username="$entry4",password="$entry5"  0 0" >> /etc/fstab

mkdir $entry3 -p
mount -a
df -h

 
smbok=$(df -h | grep "$entry3");
if [ -z $smbok ] ;then
	kdialog --error "Client nfs not mounted"	

else
	kdialog --msgbox "Client as been mounted"
	nautilus $entry3
fi



pid=$(ps -h | grep "samba_client.glade" | cut -f2 -d " " | head -1 ); kill -9 $pid
