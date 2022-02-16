#!/bin/bash
clear
echo -e "Ubah host/domain untuk vps !"
read -p "Domain: " domain
echo -e "By Ridwan"
echo "$domain" >> /etc/v2ray/domain
sleep 1
cert