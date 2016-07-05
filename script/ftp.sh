#!/bin/bash
yum install vsftpd -y
systemctl start vsftpd
systemctl enable vsftpd
firewall-cmd --permanent --add-service=ftp
firewall-cmd --reload

kdialog --msgbox "FTP Server Created Succefull"

