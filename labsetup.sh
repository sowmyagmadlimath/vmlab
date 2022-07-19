#!/bin/bash

set -e

## This script is provisioned in Vagrantfile for lab setup
##Configure Static IP for interfaces
nmcli connection add type ethernet ifname eth1
nmcli connection add type ethernet ifname eth2
nmcli connection add type ethernet ifname eth3
nmcli connection add type ethernet ifname eth4
nmcli connection add type ethernet ifname eth5

nmcli connection down "Wired connection 1" && nmcli connection delete "Wired connection 1"
nmcli connection down "Wired connection 2" && nmcli connection delete "Wired connection 2"
nmcli connection down "Wired connection 3" && nmcli connection delete "Wired connection 3"
nmcli connection down "Wired connection 4" && nmcli connection delete "Wired connection 4"
nmcli connection down "Wired connection 5" && nmcli connection delete "Wired connection 5"

##Peripheral network

nmcli connection modify "ethernet-eth1" IPv4.address 172.16.0.97/28
nmcli connection modify "ethernet-eth1" IPv4.gateway 172.16.0.97
nmcli connection modify "ethernet-eth1" IPv4.dns 172.16.0.1
nmcli connection modify "ethernet-eth1" IPv4.method manual
nmcli connection up "ethernet-eth1"


##IT interface IP address

nmcli connection modify "ethernet-eth2" IPv4.address 172.16.0.65/27
nmcli connection modify "ethernet-eth2" IPv4.gateway 172.16.0.65
nmcli connection modify "ethernet-eth2" IPv4.dns 172.16.0.1
nmcli connection modify "ethernet-eth2" IPv4.method manual
nmcli connection up "ethernet-eth2"



## HR interace ip address
nmcli connection add type ethernet ifname eth3
nmcli connection modify "ethernet-eth3" IPv4.address 172.16.0.1/26
nmcli connection modify "ethernet-eth3" IPv4.gateway 172.16.0.1
nmcli connection modify "ethernet-eth3" IPv4.dns 172.16.0.1
nmcli connection modify "ethernet-eth3" IPv4.method manual
nmcli connection up "ethernet-eth3"


## Network research interface
nmcli connection add type ethernet ifname eth4
nmcli connection modify "ethernet-eth4" IPv4.address 172.16.4.1/22
nmcli connection modify "ethernet-eth4" IPv4.gateway 172.16.4.1
nmcli connection modify "ethernet-eth4" IPv4.dns 172.16.0.1
nmcli connection modify "ethernet-eth4" IPv4.method manual
nmcli connection up "ethernet-eth4"






