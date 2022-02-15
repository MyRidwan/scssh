#!/bin/bash
#Licensed to https://www.hostingtermurah.net/
clear
if [[ -e /etc/debian_version ]]; then
	OS=debian
	RCLOCAL='/etc/rc.local'
elif [[ -e /etc/centos-release || -e /etc/redhat-release ]]; then
	OS=centos
	RCLOCAL='/etc/rc.d/rc.local'
	chmod +x /etc/rc.d/rc.local
else
	echo "It looks like you are not running this installer on Debian, Ubuntu or Centos system"
	exit
fi
color1='\e[031;1m' #merah
color2='\e[34;1m'
color3='\e[0m'
color4='\e[1;34m' #biru
color5='\e[1;36m'
color6='\e[1;33m'
echo -e "==================================================="
echo -e "--------[ ${color1}Welcome To ${color5}Premium ${color6}Script RIDWAN ]-----------"
echo -e "©÷÷÷[ ${color6}SCRIPT BG RIDWAN ]÷÷÷©"
echo -e "==================================================="
	cname=$( awk -F: '/model name/ {name=$2} END {print name}' /proc/cpuinfo )
	cores=$( awk -F: '/model name/ {core++} END {print core}' /proc/cpuinfo )
	freq=$( awk -F: ' /cpu MHz/ {freq=$2} END {print freq}' /proc/cpuinfo )
	tram=$( free -m | awk 'NR==2 {print $2}' )
	swap=$( free -m | awk 'NR==4 {print $2}' )
	up=$(uptime|awk '{ $1=$2=$(NF-6)=$(NF-5)=$(NF-4)=$(NF-3)=$(NF-2)=$(NF-1)=$NF=""; print }')

echo -e "\e[032;1mCPU Model:\e[0m $cname"
echo -e "\e[032;1mNumber Of Cores:\e[0m $cores"
echo -e "\e[032;1mCPU Frequency:\e[0m $freq MHz"
echo -e "\e[032;1mTotal Amount Of RAM:\e[0m $tram MB"
echo -e "\e[032;1mTotal Amount Of Swap:\e[0m $swap MB"
echo -e "\e[032;1mSystem Uptime:\e[0m $up"
echo -e "==================================================="
echo -e "----------------[ SSH & OVPN OPTION ]--------------"
echo -e "${color1}[01] • ${color4}Create User Account"
echo -e "${color1}[02] • ${color4}Create Trial Account"
echo -e "${color1}[03] • ${color4}Add Active Period SSH & OpenVPN Account"
echo -e "${color1}[04] • ${color4}Delete User Account"
echo -e "${color1}[05] • ${color4}Check Account Login"
echo -e "${color1}[06] • ${color4}Daftar Member SSH & OpenVPN"
echo -e "${color1}[07] • ${color4}Delete User Expired SSH & OpenVPN"
echo -e "${color1}[08] • ${color4}Set up Autokill SSH"
echo -e "${color1}[09] • ${color4}Displays Users Who Do Multi Login SSH"
echo -e "${color1}[10] • ${color4}Restart Service Dropbear, Squid3, OpenVPN dan SSH"
echo -e "==================================================="
echo -e "---------------[ V2RAY/VMESS OPTION  ]-------------"
echo -e "${color1}[11] • ${color4}Create V2ray/Vmess Account"
echo -e "${color1}[12] • ${color4}Delete V2ray/Vmess Account"
echo -e "${color1}[13] • ${color4}Extend V2ray/Vmess Account"
echo -e "${color1}[14] • ${color4}Check User Login cek-ws"
echo -e "==================================================="
echo -e "----------------[ V2RAY/VLESS OPTION ]-------------"
echo -e "${color1}[15] • ${color4}Create V2ray/Vless Account"
echo -e "${color1}[16] • ${color4}Delete V2ray/Vless Account"
echo -e "${color1}[17] • ${color4}Extend V2ray/Vless Account"
echo -e "${color1}[18] • ${color4}Check User Login"
echo -e "==================================================="
echo -e "---------------[ TROJAN GFW  OPTION ]--------------"
echo -e "${color1}[19] • ${color4}Create Trojan Account"
echo -e "${color1}[20] • ${color4}Delete Trojan Account"
echo -e "${color1}[21] • ${color4}Extend Trojan Account"
echo -e "${color1}[22] • ${color4}Check User Login cek-tr"
echo -e "==================================================="
echo -e "------------[ SHADOWSOCKS OBSF OPTION ]------------"
echo -e "${color1}[23] • ${color4}Create Shadowsocks Account"
echo -e "${color1}[24] • ${color4}Delete Shadowsocks Account"
echo -e "${color1}[25] • ${color4}Extend Shadowsocks Account"
echo -e "${color1}[26] • ${color4}Check User Login"
echo -e "==================================================="
echo -e "---------------[SHADOWSOCKSR OPTION ]--------------"
echo -e "${color1}[27] • ${color4}Create ShadowsocksR Account"
echo -e "${color1}[28] • ${color4}Delete ShadowsocksR Account"
echo -e "${color1}[29] • ${color4}Extend ShadowsocksR Account"
echo -e "${color1}[30] • ${color4}Show Other SSR Menu"
echo -e "==================================================="
echo -e "--------------[  WIREGUARD  OPTION ]---------------"
echo -e "${color1}[31] • ${color4}Create Wireguard Account"
echo -e "${color1}[32] • ${color4}Delete Wireguard Account"
echo -e "${color1}[33] • ${color4}Extend Wireguard Account"
echo -e "${color1}[34] • ${color4}Check User Login"
echo -e "${color1}[35] • ${color4}Check Wireguard User Interface"
echo -e "==================================================="
echo -e "------------------[  L2TP  OPTION ]----------------"
echo -e "${color1}[36] • ${color4}Create L2TP Account"
echo -e "${color1}[37] • ${color4}DeletE L2TP Account"
echo -e "${color1}[38] • ${color4}Extend L2TP Account"
echo -e "==================================================="
echo -e "------------------[  PPTP  OPTION ]----------------"
echo -e "${color1}[39] • ${color4}Create PPTP Account"
echo -e "${color1}[40] • ${color4}Delete PPTP Account"
echo -e "${color1}[41] • ${color4}Extend PPTP Account"
echo -e "${color1}[42] • ${color4}Check User Login"
echo -e "==================================================="
echo -e "------------------[  SSTP  OPTION ]----------------"
echo -e "${color1}[43] • ${color4}Create SSTP Account"
echo -e "${color1}[44] • ${color4}Delete SSTP Account"
echo -e "${color1}[45] • ${color4}Extend SSTP Account"
echo -e "${color1}[46] • ${color4}Check User Login"
echo -e "==================================================="
echo -e "-----------------[ SYSTEM OPTION ]-----------------"
echo -e "${color1}[47] • ${color4}Speedtest Server"
echo -e "${color1}[48] • ${color4}Add Or Change Subdomain Host For VPS"
echo -e "${color1}[49] • ${color4}Change Port Of Some Service"
echo -e "${color1}[50] • ${color4}Autobackup Data VPS"
echo -e "${color1}[51] • ${color4}Backup Data VPS"
echo -e "${color1}[52] • ${color4}Restore Data VPS"
echo -e "${color1}[53] • ${color4}Webmin Menu"
echo -e "${color1}[54] • ${color4}Update To Latest Kernel"
echo -e "${color1}[55] • ${color4}Limit Bandwith Speed Server"
echo -e "${color1}[56] • ${color4}Check Usage of VPS Ram"
echo -e "${color1}[57] • ${color4}Update To Latest Script Version"
echo -e "${color1}[58] • ${color4}Reboot VPSreboot"
echo -e "${color1}[59] • ${color4}Change Server Password"
echo -e "${color1}[60] • ${color4}Renew Certificate V2ray"
echo -e "${color1}[61] • ${color4}Exit Menu"
echo "----------------Script Mod By RIdwan-----------------"
read -p "Choose an option from (1-61): " x
if test $x -eq 1; then
usernew
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 01; then
usernew
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 2; then
trial
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 02; then
trial
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 3; then
renew
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 03; then
renew
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 4; then
deluser
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 04; then
deluser
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 5; then
cek
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 05; then
cek
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 6; then
member
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 06; then
member
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 7; then
delete
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 07; then
delete
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 8; then
autokill
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 08; then
autokill
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 9; then
ceklim
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 09; then
ceklim
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 10; then
restart
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 11; then
add-v2ray
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 12; then
del-ws
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 13; then
renew-ws
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 14; then
cek-ws
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 15; then
add-vless
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 16; then
del-vless
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 17; then
renew-vless
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 18; then
cek-ws
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 19; then
add-tr
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 20; then
del-tr
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 21; then
renew-tr
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 22; then
cek-tr
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 23; then
add-ss
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 24; then
del-ss
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 25; then
renew-ss
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 26; then
cek-ss
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 27; then
add-ssr
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 28; then
del-ssr
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 29; then
renew-ssr
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 30; then
ssr
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 31; then
add-wg
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 32; then
del-wg
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 33; then
cek-wg
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 34; then
renew-wg
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 35; then
wg show
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 36; then
add-l2tp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 37; then
del-l2tp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 38; then
renew-l2tp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 39; then
add-pptp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 40; then
del-pptp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 41; then
renew-pptp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 42; then
cek-pptp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 43; then
add-sstp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 44; then
del-sstp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 45; then
renew-sstp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 46; then
cek-sstp
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 47; then
speedtest
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 48; then
add-host
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 49; then
change-port
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 50; then
autobackup
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 51; then
backup
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 52; then
restore
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 53; then
wbmn
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 54; then
kernel-updt
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 55; then
limit-speed
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 56; then
ram
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 57; then
update
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 58; then
reboot
elif test $x -eq 59; then
passwd
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 60; then
cert2vray
echo ""
read -p "Tekan enter untuk kembali ke MENU"
menu
elif test $x -eq 61; then
echo " "
echo "Goodbye Menu!"
echo " "
exit
else
echo "Options Not Available In Menu."
echo " "
exit
fi
