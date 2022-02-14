#!/bin/bash
clear
echo -e "Ubah host/domain untuk vps !"
read -p "Domain: " domain
echo "$domain" >> /etc/v2ray/domain
sleep 1
cert