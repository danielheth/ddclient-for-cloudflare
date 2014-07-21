# Dynamic DNS Client
I've forked the famous [ddclient](http://sourceforge.net/projects/ddclient/) project and incorporated changes described by [Peter R's blog](http://blog.peter-r.co.uk/cloudflare-ddclient-patch.html) to create a single easily installed application.

## Use Case
I'm setting up Raspberry PI's for use at friends and families.  I needed a system i could compeltely control and rahter than getting huge computers and use up alot of their power... I opted ofr the simple low-power Pi's.  Since they will all be on various dynamic IP internet connections, I first had to tackle knowing where they were... in walks ddclient and Cloudflare.

## Installation
I wanted a few very simple installations to get things working, so here they are:

>$ wget https://github.com/danielheth/ddclient-for-cloudflare/tarball/master

>$ tar -xpvf master

>$ cd danielheth*

>$ sudo ./install.sh

This will put all the files where they need to go. 

