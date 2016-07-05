
#copy localtion
#identili
echo $1
#website name
echo $2
domainname=$2
#location
loc=$(cat /.project/scripts/stuff/webfolder)
echo "-----------------------------------"

loc="$loc/*"
echo $loc
mkdir /var/www/$1 -p
cp $loc -rf /var/www/$1

yum install httpd -y
restorecon -Rv $3

touch /etc/httpd/conf.d/$1.conf

echo "<VirtualHost *:80>" > /etc/httpd/conf.d/$1.conf
echo "    DocumentRoot /var/www/$1" >> /etc/httpd/conf.d/$1.conf
echo "    ServerName $2" >> /etc/httpd/conf.d/$1.conf
echo "</VirtualHost>" >>/etc/httpd/conf.d/$1.conf
echo "<Directory /var/www/$1>" >> /etc/httpd/conf.d/$1.conf
echo "  require all granted" >> /etc/httpd/conf.d/$1.conf
echo "</Directory>" >> /etc/httpd/conf.d/$1.conf

#resolve hosts name----
ipaddress=$(ip addr | grep 'state UP' -A2 | tail -n1 | awk '{print $2}'| cut -f1 -d '/' )
echo $ipaddress

echo "$ipaddress $2" >> /etc/hosts



httpd -t

#service on----
systemctl start httpd;
systemctl enable httpd


#firewall-----
firewall-cmd --permanent --add-service=http
firewall-cmd --reload


 kdialog --msgbox "HTTP server is configure with domain name '$domainname'"
