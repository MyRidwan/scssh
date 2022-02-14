#!/bin/bash
#Script make by Rocknet VPN
clear
echo ""
read -p "Username: " user
read -p "Exp: " exp

if grep -qc "${user}-RN" /etc/v2ray/config.json
then
        echo "Checking..."
        sleep 0.5
        echo -e "User Sudah Ada!"
        exit
else
        echo "Checking"
        echo -e "Oke lanjut"
fi
uuid="$(cat /proc/sys/kernel/random/uuid)"
client='"clients":'
clients='"clients"'
users='"$user"'
id='"id"'
aid='"alterId"'
uuids='"$uuid"'
ler='"'
aids='0'
path="$(grep -oP '(?<="path": ")[^"]*' /etc/v2ray/config.json)"
#domain="$(grep -oP '(?<="Host": ")[^"]*' /etc/v2ray/config.json)"
domain="$(cat /etc/v2ray/domain)"
MYIP=$(wget -qO- ipv4.icanhazip.com)
expp=$(date -d "$exp days" +"%d-%m-%Y")

#V2RAY NON TLS
sed -i "s/#default.*/#default\n\t #${user}-RN $expp\n\t  {\n\t    $aid: $aids,\n\t    $id: $ler$uuid$ler\n\t  },\n\t #${user}-RN $expp/" /etc/v2ray/config.json
sed -i "s/user/$user/" /etc/v2ray/data.json
sed -i "s/uuid/$uuid/" /etc/v2ray/data.json
sed -i "s+pathh+$path+" /etc/v2ray/data.json
sed -i "s/domain/$domain/" /etc/v2ray/data.json

#V2RAY TLS
sed -i "s/#default.*/#default\n\t #${user}-RN $expp\n\t  {\n\t    $aid: $aids,\n\t    $id: $ler$uuid$ler\n\t  },\n\t #${user}-RN $expp/" /etc/v2ray/tls.json
sed -i "s/user/$user/" /etc/v2ray/datatls.json
sed -i "s/uuid/$uuid/" /etc/v2ray/datatls.json
sed -i "s+pathh+$path+" /etc/v2ray/datatls.json
sed -i "s/domain/$domain/" /etc/v2ray/datatls.json
hasil=$(base64 /etc/v2ray/data.json | tr -d "\n")
hasil2=$(base64 /etc/v2ray/datatls.json | tr -d "\n")
echo -e "Processing..."
sleep 1
clear
echo -e "Success!"
echo -e "=========================="
echo -e "Rocknet VPN Configuration"
echo -e "=========================="
echo -e "Username : ${user}-RN"
echo -e "Domain   : $domain"
echo -e "IP       : $MYIP"
echo -e "None TLS : 80"
echo -e "TLS      : 445"
echo -e "UUID     : $uuid"
echo -e "AlterId  : 0"
echo -e "Security : Auto"
echo -e "TLS      : None & TLS"
echo -e "Path     : $path"
echo -e "Host     : None"
echo -e "Expired  : $expp"
echo -e "=========================="
echo -e "[NON TLS PORT 80]"
echo -e "vmess://$hasil"
echo -e "=========================="
echo -e "[TLS PORT 445]"
echo -e "vmess://$hasil2"
echo -e "=========================="
echo -e "Terima Kasih Banyak"
echo -e "Premium Script Make by Rocknet"
echo ""
#Pengulangan data.json
sed -i "s/$user/user/" /etc/v2ray/data.json
sed -i "s/$uuid/uuid/" /etc/v2ray/data.json
sed -i "s+$path+pathh+" /etc/v2ray/data.json
sed -i "s/$domain/domain/" /etc/v2ray/data.json
#Pengulangan tls.json
sed -i "s/$user/user/" /etc/v2ray/datatls.json
sed -i "s/$uuid/uuid/" /etc/v2ray/datatls.json
sed -i "s+$path+pathh+" /etc/v2ray/datatls.json
sed -i "s/$domain/domain/" /etc/v2ray/datatls.json

#Penambahan user v2ray
sed -i "s/#Username/#${user}-RN $expp\n#Username/" /etc/v2ray/user.txt

systemctl restart v2ray
systemctl restart v2tls
