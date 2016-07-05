#!/bin/bash
echo "-----------------------------------------"
#folder name---
folname=$( cat /.project/scripts/stuff/perfol)
mkdir -p $folname 
#select user
echo $1
#permission
echo $2
owner="Owner";
read="Read";
group="Group";
other="Other";
write="Write";
exicute="Exicute";
special="Special";
stickbit="Stickybit";

 
if [ $1 == $owner ]; then 
	  if [ $2 == $read ]; then
		chmod u+r $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $exicute ]; then
		chmod u+x $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $write ]; then
		chmod u+w $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"	
	elif [ $2 == $stickybit ]; then
		chmod u+t $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $special ]; then
		chmod u+s $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	fi

elif [ $1 == $other ]; then
	if [ $2 == $read ]; then
		chmod o+r $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"	
	elif [ $2 == $exicute ]; then
		chmod o+x $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $write ]; then
		chmod o+w $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $stickybit ]; then
		chmod o+t $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $special ]; then
		chmod o+s $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	fi
elif [ $1 == $group ]; then
	if [ $2 == $read ]; then
		chmod g+r $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $exicute ]; then
		chmod g+x $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $write ]; then
		chmod g+w $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $stickybit ]; then
		chmod g+t $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	elif [ $2 == $special ]; then
		chmod g+s $folname
		kdialog --msgbox "Permission $2 has been set to $1 on $folname folder"
	fi

else
	kdialog --error "Fill valid data"
fi
