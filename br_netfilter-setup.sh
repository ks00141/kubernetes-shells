#!/bin/bash
if [ "$EUID" -ne 0 ];
	then echo "This script is to need root permission"
else	
	modprobe br_netfilter
	echo 1 > /proc/sys/net/ipv4/ip_forward
	echo 1 > /proc/sys/net/bridge/bridge-nf-call-iptables
	exit
fi
