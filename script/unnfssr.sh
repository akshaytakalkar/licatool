#!/bin/bash
if [ -Z  $folname ]; then
    kdialog --error "enter valid file name"
    exit 1
elif [ -d  $folname ]; then
    #yum remove nfs -y
    tmp="#"
    sed -e  "s/$folname/$tmp/" /etc/exports
    kdialog --msgbox "NFS shared folder: $folname is removed"
    kdialog --passivepopup "NFS service has stoped" 3
    
fi
