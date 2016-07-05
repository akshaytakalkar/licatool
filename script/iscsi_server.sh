#!/bin/bash

if [ $combobox1 = "Yes" ]
         then
        (echo n;echo l;echo ;echo $entry2;echo w )| fdisk $entry1
        diskname=$(fdisk -l /dev/sda | tail -2 |head -1|cut -d ' ' -f1)
        echo $diskname
        partprobe $entry1;
        yum install targetcli -y
        targetcli /backstores/block create $entry3 $diskname
        targetcli /iscsi create $entry4
        targetcli /iscsi/$entry4/tpg1/acls create $entry5
        targetcli /iscsi/$entry4/tpg1/portals create $entry6
        targetcli /iscsi/$entry4/tpg1/luns create /backstores/block/$entry3
       targetcli saveconfig

elif [ $combobox1 = "No" ]
         then
        (echo n;echo e;echo ;echo ;echo ;echo n;echo l;echo ;echo $entry2;echo w )| fdisk $entry1
        diskname=$(fdisk -l /dev/sda | tail -2 |head -1|cut -d ' ' -f1)
        echo $diskname
        partprobe $entry1;
        yum install targetcli -y
       targetcli /backstores/block create $entry3 $diskname
        targetcli /iscsi create $entry4
        targetcli /iscsi/$entry4/tpg1/acls create $entry5
        targetcli /iscsi/$entry4/tpg1/portals create $entry6
        targetcli /iscsi/$entry4/tpg1/luns create /backstores/block/$entry3
        targetcli saveconfig
fi

systemctl start  target
systemctl enable target

firewall-cmd --permanent --add-port=3260/tcp
firewall-cmd --reload

kdialog --msgbox "iSCSI server is ready"

