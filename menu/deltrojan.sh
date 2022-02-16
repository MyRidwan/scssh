#!/bin/bash
clear
listtrojan
echo -e "Masukan Username yang ingin dihapus (Tanpa -RN)"
read -p "Username: " user

if grep -qc "${user}-RN" /etc/v2ray/config.json
then
        sed -i -e "/#${user}-RN.*/,/#${user}-RN.*$/d" /etc/v2ray/trojan.json
        sed -i -e "/#${user}-RN.*/d" /etc/v2ray/usertrojan.txt
        systemctl restart trojan
        listtrojan
        echo ""
        echo -e "User Berhasil Dihapus!"
else
        echo ""
        echo -e "User tidak ada!"
        systemctl restart trojan
        exit
fi
