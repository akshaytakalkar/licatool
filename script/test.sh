#!/bin/bash


echo $checkbutton1
	
	isoname=$(cat /.project/scripts/stuff/isoname)
	rm /.project/scripts/stuff/isoname -f 


	if [ $checkbutton1 == "true" ]; then
		echo "if true";
		kdialog --msgbox "Please wait for few minutes untill pop comes.";
		mkdosfs -n 'Orange' -I $entry2;
		echo "format"
		dd if=$isoname of=$entry2;
		umount $entry2;
		kdialog --msgbox "Your Pendrive/Media is ready for use.";

	else
		echo "if false";
		kdialog --msgbox "Please wait for few minutes untill popup comes.";
		dd if=$isoname of=$entry2;
		umount $entry2;
		kdialog --msgbox "Your Pendrive/Media is ready for use.";
	
	fi
