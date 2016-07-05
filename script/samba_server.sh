#!/bin/bash

yum install samba samba-client -y

	echo "#---------share path created by project-------" >> /etc/samba/smb.conf
	echo '['$entry1']' >> /etc/samba/smb.conf

	echo 'public = yes' >> /etc/samba/smb.conf

	echo 'path = '$entry2 >> /etc/samba/smb.conf
	
	mkdir $entry2 -p
	
	echo 'hosts allow = ' $entry3 >> /etc/samba/smb.conf

	echo 'valid users = ' $entry4 >> /etc/samba/smb.conf

	echo 'writable = yes' >> /etc/samba/smb.conf
	
	
	useradd $entry4

	echo -ne $entry5"\n"$entry5"\n" | smbpasswd -a -s $entry4

	setfacl -m u:$entry4:rwx $entry2;

	echo 'browseable = yes' >> /etc/samba/smb.conf

	chcon -t samba_share_t -R $entry2;

	systemctl restart smb nmb
	systemctl enable smb nmb;

	firewall-cmd --permanent --add-service=samba
	firewall-cmd --permanent --add-service=samba-client
	firewall-cmd --reload

	#valid1=$( echo "" | testperm -t | grep "Loaded services file OK." )

	kdialog --msgbox "Samba Server created successfully"
