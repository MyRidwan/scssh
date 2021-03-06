#!/bin/bash
clear
listv2ray
echo -e "Masukan Username yang ingin dihapus (tanpa -RN)"
read -p "Username: " user

if grep -qc "${user}-RN" /etc/v2ray/config.json
then
        sed -i -e "/#${user}-RN.*/,/${user}-RN.*$/d" /etc/v2ray/config.json
        sed -i -e "/#${user}-RN.*/,/${user}-RN.*$/d" /etc/v2ray/tls.json
        sed -i -e "/#${user}-RN.*/d" /etc/v2ray/user.txt
        systemctl restart v2ray
        systemctl restart v2tls
        listv2ray
        echo ""
        echo -e "User Berhasil Dihapus!"
else
        echo ""
        echo -e "User tidak ada!"
        systemctl restart v2ray
        systemctl restart v2tls
        exit
fi
