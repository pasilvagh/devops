#!/bin/bash

#script for raspbian
#SSH key generator

#key saved on ~/.ssh/
ssh-keygen -t rsa -b 4096 -C $email

eval "$(ssh-agent -s)"

ssh-add ~/.ssh/$key_name


#add in /etc/network/interfaces
#iface eth0 inet manual

#configure eth0 interface in /etc/dhcpcd.conf
#interface eth0
#static ip_address=$IP/24
#static domain_name_servers=$DNS
#static routers=$GATEWAY

#sudo service networking restart

#enable and configure SSH
#sudo systemctl enable ssh
#sudo systemctl start ssh

#copy ssh key to raspberry
#from PC
#cat ~/.ssh/$PUBLICKEY | ssh <USERNAME>@<IP-ADDRESS> 'mkdir -p ~/.ssh && cat >> ~/.ssh/authorized_keys'
#https://www.ssh.com/ssh/config/
