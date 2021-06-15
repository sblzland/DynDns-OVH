# DynDns-OVH

On my homelab, i don't have fixed IP address so i need to be aware in case of change.
This script is used to detect and perform the change of IP address throught the DynDNS service of OVH.

## Prerequisite
Domain name register with OVH.

## Usage

The following variables need to be change :
 - **hostname** : set the DNS name you want to modify in case of change
 - **login** : login create on OVH website for the DynDNS service
 - **password** : password associate with the login for the DynDNS service

Add the script to a cronjob to perform the monitoring and the change of ip address. 
When a change is done, a log file "ip_pub_change.log" is create and populate with the timestamp.
