#!/bin/bash

### VARIABLE ###

#HOSTNAME TO MODIFY
hostname=" "
#OVH INFORMATION
login=" "
password=" "


#IP DNS#
ip_address_dns=`host $hostname | grep address | cut -d " " -f 4`
#IP FAI#
ip_address_local=`curl https://ipinfo.io/ip 2> /dev/null`
#URL#
url='https://www.ovh.com/nic/update?system=dyndns&hostname='$hostname'&myip='$ip_address_local''
#DATE#
now=`date +"%a %d %b"`


### SCRIPT ###

if [ $ip_address_dns != $ip_address_local ]; then
  echo "## IP différente ##"
  curl --basic -u $login:$password $url
  echo "$now : $ip_address_local" >> ip_pub_change.log
  sleep 2
else
  echo "## IP identique ##"
fi
