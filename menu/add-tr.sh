#!/bin/bash
#Read Username
read -p "Password: " user
read -p "Exp: " exp

#Checking
if grep -qc "${user}-RN" /etc/v2ray/trojan.json
then
        echo "Checking..."
        sleep 0.5
        echo -e "User Sudah Ada!"
        exit
else
        echo "Checking"
        echo -e "Oke lanjut"
fi

#VAR
pw='"password"'
lir='"'
#Domain
#domain="$(grep -oP '(?<="domain": ")[^"]*' /etc/v2ray/trojan.json)"
domain="$(cat /etc/v2ray/domain)"
MYIP=$(wget -qO- ipv4.icanhazip.com)
expp=$(date -d "$exp days" +"%d-%m-%Y")

#Write User
sed -i "s/#default.*/#default\n\t #${user}-RN $expp\n\t  {\n\t    $pw: $lir${user}-RN$lir\n\t  },\n\t #${user}-RN $expp/" /etc/v2ray/trojan.json

#Hasil
hasil="${user}-RN@${domain}:446?sni=isisendiri"

#Print
echo -e "Processing..."
sleep 0.8
clear
echo -e "Success!"
echo -e "=========================="
echo -e "Rocknet VPN Configuration"
echo -e "=========================="
echo -e "Username : ${user}-RN"
echo -e "IP       : $MYIP"
echo -e "Domain   : $domain"
echo -e "SNI      : Isi sendiri ya"
echo -e "Password : ${user}-RN"
echo -e "TLS      : Yes"
echo -e "Expired  : $expp"
echo -e "=========================="
echo -e "trojan://$hasil"
echo -e "=========================="
echo -e "Terima Kasih Banyak"
echo -e "by Rocknet Store • VPN"

#Write userlist
sed -i "s/#Username/#${user}-RN $expp\n#Username/" /etc/v2ray/usertrojan.txt

systemctl restart trojan
