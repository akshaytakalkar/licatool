#!/bin/bash


yum install iscsi-initiator-utils.i686 -y
echo "InitiatorName="$1 > /etc/iscsi/initiatorname.iscsi
iscsiadm --mode discoverydb --type sendtargets --portal $2} --discover
iscsiadm --mode node --targetname $3} --portal $2:3260 --login

