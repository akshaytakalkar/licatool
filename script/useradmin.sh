#!/bin/bash

#check user exits
if id -u $entry1 >/dev/null 2>&1; then
	kdialog --error "User already exits"
	exit 1 > ~/LiCA/useradd.log;
else 
 user=$entry1
fi


if [ $entry2 != $entry3 ]; then
	kdialog --error "Password does not match";
	exit 1 
else
	passw=$entry2
fi


#check group exits
if id -g $entry4 >/dev/null 2>&1; then
	group=$entry4
else
    #code to add group
	group=$entry4
	groupadd $group
fi

#check userid 
/bin/egrep  -i ":$entry5:" /etc/passwd >> /dev/null
if [ $? -eq 0 ]; then
	kdialog --error "User id exits "
	exit 1
elif [ 1000 -gt $entry5 ]; then
	kdialog --error "Enter User id greater than 1000! "
	exit  1;		
else
   	
	userid=$entry5
	echo "OK"
fi


#getting home dir
if [ x"$entry7" = "x" ]; then
homedir="/home/$1"
else 
 homedir=$entry7
fi

echo $user $passw $userid $group $homedir 






useradd --home-dir $homedir --groups $group --uid $userid $username 
echo "$passw" | passwd -f $username --stdin 
kdialog --passivepopup "Useradded Successfully" 4
kdialog --msgbox "User added Successfully"



