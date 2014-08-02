#!/bin/sh


echo "Installing ddclient for cloudflare"

read -p "What zone is this system a part of (domain name listed on cloudflare)? " zone

read -p "What is your cloudflare username? " login

read -p "What is your cloudflare API key (look under account settings)? " password

read -p "What is the fully qualified (hostname.$zone) for this device? " fqdn





echo "Installing Pre-reqs"
apt-get install perl libjson-any-perl libio-socket-ssl-perl -y

echo "Installing ddclient"
cp etc_rc.d_init.d_ddclient.ubuntu /etc/init.d/ddclient
chmod +x /etc/init.d/ddclient
cp ddclient /usr/sbin/
mkdir /var/cache/ddclient

echo "Configuring ddclient"
mkdir /etc/ddclient
cp ddclient.conf /etc/ddclient/ddclient.conf
echo "zone=$zone," >> /etc/ddclient/ddclient.conf
echo "login=$login," >> /etc/ddclient/ddclient.conf
echo "password=$password" >> /etc/ddclient/ddclient.conf
echo "$fqdn," >> /etc/ddclient/ddclient.conf


echo "Adding to Startup"
update-rc.d ddclient defaults

echo "Starting ddclient"
service ddclient Starting

echo "TODO:  Log into your CloudFlare account and validate the public ip address has been configured."
