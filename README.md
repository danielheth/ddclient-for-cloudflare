# Dynamic DNS Client
I've forked the famous [ddclient](http://sourceforge.net/projects/ddclient/) project and incorporated changes described by [Peter R's blog](http://blog.peter-r.co.uk/cloudflare-ddclient-patch.html) to create a single easily installed application.

## Installation
I wanted a few very simple installations to get things working, so here they are:

>$ wget https://github.com/danielheth/ddclient-for-cloudflare/tarball/master

>$ tar -xpvf master

>$ cd danielheth*

>$ sudo ./install.sh

Then follow the prompts which will help you configure ddclient to work with your cloudflare account.

## Troubleshooting
ddclient logs to syslog... so using the following command can help you troubleshoot what's going on:

>$ cat /var/log/syslog | grep ddclient

Your configuration is saved to the /etc/ddclient/ddclient.conf file in case you need to make any changes.  It is locked down to root access.
