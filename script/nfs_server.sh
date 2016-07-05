#!/bin/bash

#Package for NFS
#yum install nfs-utiles -y

#Condition And Parameter Verification

if [ $combobox1 = "Read-Only" ]; then

	mkdir $entry1;
	echo $entry1 "    " $entry2"(ro,sync)" >> /etc/exports;
	chmod 774 $entry1

elif [ $combobox1 = "Read-Write" ]; then

	mkdir $entry1;
	echo $entry1"    "$entry2"(rw,sync)">>/etc/exports;
	chmod 777 $entry1

fi

#Starting and Reloading Nfs service

systemctl start nfs-server
systemctl enable nfs-server

#Adding Nfs Service into the Firewall

firewall-cmd --permanent --add-service=nfs
firewall-cmd --reload

#It shows the entry of Nfs Server

#valid1=$( exportfs -rv | grep $entry2 | cut -f2 -d " " | cut -f1 -d ":" )
#if [ $valid1 == "$entry1" ]; then
	kdialog --msgbox "Server Created Successfully";
#else
	#kdialog --msgbox "Something going wrong ! Please provide valid info !! ";
#fi





