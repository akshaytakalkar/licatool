#!/bin/bash

echo $entry1
if [ -Z $entry1 ]; then
    kdialog --error "enter valid file name"
    exit 1
elif [ -f  $entry1 ]; then
      yum install aide -y
	echo good
	
	if [ $combobox1 == "DATAONLY" ]; then
	  echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "LSPP" ]; then
	  echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "PERMS" ]; then
	  echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "DIR" ]; then
	  echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "NORMAL" ]; then
	 echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "EVERYTHING" ]; then
	 echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "ALLXTRAHASHES" ]; then
	 echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "FIPSR" ]; then
	 echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	fi

elif [ -d $entry1 ]; then
  echo "Found"
	yum install aide -y
	if [ $combobox1 == "DATAONLY" ]; then
	  echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "LSPP" ]; then
	  echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "PERMS" ]; then
	  echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "DIR" ]; then
	  echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "NORMAL" ]; then
	 echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "EVERYTHING" ]; then
	 echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "ALLXTRAHASHES" ]; then
	 echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	elif [ $combobox1 == "FIPSR" ]; then
	 echo $entry1" "$combobox1 >> /etc/aide.conf
	  aide --init
	  mv /var/lib/aide/aide.db.new.gz /var/lib/aide/aide.db.gz
	  echo "wel done"
	fi

else
 kdialog --error "enter valid file name" 
fi

echo $combobox1
echo $filechooserbutton2
