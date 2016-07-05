#!/bin/bash

echo $dsname
echo $secpass
echo $secpass1
echo $tmpmount
tmpmount=$( cat /.project/scripts/stuff/encptmn)


if [ $secpass == $secpass1 ]; then

(echo "$secpass";echo "$secpass") | cryptsetup luksFormat --force-password $dsname


(echo "$secpass") | cryptsetup luksOpen $dsname name

mkfs -t ext4 /dev/mapper/name

mount /dev/mapper/name $tmpmount

kdialog --msgbox "Your encrypted Partition is mounted sucessfully...."
nautilus $tmpmount

else
kdialog --msgbox "Password does not matched."

fi
rm -f /.project/scripts/stuff/encptmn
