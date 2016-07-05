#!/bin/bash
#yum install iscsi-initiator-utils.i686 -y
echo "InitiatorName="$entry1 > /etc/iscsi/initiatorname.iscsi
iscsiadm --mode discoverydb --type sendtargets --portal $entry2 --discover
iscsiadm --mode node --targetname $entry3 --portal $entry2:3260 --login
kdialog --msgbox "Your disk block is ready check using 'Disk Manager'"



