#!/bin/bash
#Read Username
#!/bin/bash
grey='\x1b[90m'
red='\x1b[91m'
green='\x1b[92m'
yellow='\x1b[93m'
blue='\x1b[94m'
purple='\x1b[95m'
cyan='\x1b[96m'
white='\x1b[37m'
bold='\033[1m'
off='\x1b[m'
flag='\x1b[47;41m'

ISP=$(curl -s ipinfo.io/org | cut -d " " -f 2-10 )
CITY=$(curl -s ipinfo.io/city )
COUNTRY=$(curl -s ipinfo.io/country )

MYIP=$(wget -qO- ipinfo.io/ip);
IZIN=$( curl https://myridwan.github.io/izin | grep $MYIP )
echo "Memeriksa Hak Akses VPS..."
if [ $MYIP = $IZIN ]; then
clear
echo -e "${green}Akses Diizinkan...${off}"
sleep 1
else
clear
echo -e "${red}Akses Diblokir!${off}"
echo "Hanya Untuk Pengguna Berbayar!"
echo "Silahkan Hubungi Admin wa.me/6285781385825"
exit 0
fi
clear
read -p "Password: " user
read -p "Exp: " exp

#Checking
if grep -qc "${user}" /etc/v2ray/trojan.json
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
sed -i "s/#default.*/#default\n\t #${user} $expp\n\t  {\n\t    $pw: $lir${user}$lir\n\t  },\n\t #${user} $expp/" /etc/v2ray/trojan.json

#Hasil
hasil="${user}@${domain}:446?sni=isisendiri"

#Print
echo -e "Processing..."
sleep 0.8
clear
echo -e "Success!"
echo -e "=========================="
echo -e "Ridwan VPN Configuration"
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
