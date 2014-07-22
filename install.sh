#!/bin/sh

echo "Installing ddclient for cloudflare"

echo "Installing Pre-reqs"
apt-get install perl libjson-any-perl libio-socket-ssl-perl

echo "Copying files..."
cp etc_rc.d_init.d_ddclient.ubuntu /etc/init.d/ddclient
cp ddclient /usr/sbin/
mkdir /etc/ddclient
cp ddclient.conf /etc/ddclient/ddclient.conf
echo "Done"

echo "\nTODO:  Now you need to edit the /etc/ddclient/ddclient.conf and add your cloudflare username/api_key, zone and fqdn for this client.\n"
