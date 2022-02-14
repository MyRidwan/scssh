#!/bin/bash
if [ "${EUID}" -ne 0 ]; then
                echo "You need to run this script as root"
                exit 1
fi
if [ "$(systemd-detect-virt)" == "openvz" ]; then
                echo "OpenVZ is not supported"
                exit 1
fi    

apt update  
apt-get install curl wget screen -y

#install v2ray
cd
wget https://raw.githubusercontent.com/myridwan/scssh/ipuk/install/install.sh && chmod +x install.sh && ./install.sh
cd
wget https://raw.githubusercontent.com/myridwan/scssh/ipuk/install/bbr.sh && chmod +x bbr.sh && ./bbr.sh
cd
wget https://raw.githubusercontent.com/myridwan/scssh/ipuk/install/ins-menu.sh && chmod +x ins-menu.sh && ./ins-menu.sh
cd
wget https://raw.githubusercontent.com/myridwan/scssh/ipuk/install/ssh-vpn.sh && chmod +x ssh-vpn.sh && ./ssh-vpn.sh
cd
wget https://raw.githubusercontent.com/myridwan/scssh/ipuk/websocket-python/websocket.sh && chmod +x websocket.sh && screen -S websocket.sh ./websocket.sh
cd
wget https://raw.githubusercontent.com/myridwan/scssh/ipuk/install/ins-wg.sh && chmod +x ins-wg.sh && ./ins-wg.sh
cd
wget https://raw.githubusercontent.com/myridwan/scssh/ipuk/install/ins-ssr.sh && chmod +x ins-ssr.sh && ./ins-ssr.sh
cd
wget https://raw.githubusercontent.com/myridwan/scssh/ipuk/install/ins-ss.sh && chmod +x ins-ss.sh && ./ins-ss.sh
cd
wget https://raw.githubusercontent.com/myridwan/scssh/ipuk/install/ipsec.sh && chmod +x ipsec.sh && ./ipsec.sh
cd
rm -f ssh-vpn.sh
rm -f ssr.sh
rm -f install.sh
rm -f websocket.sh
rm -f bbr.sh
rm -f ins-menu.sh
rm -f ins-wg.sh
rm -f ins-ssr.sh
rm -f ins-ss.sh
rm -f ipsec.sh
sleep 0.8
history -c
echo "1.0" > /home/ver
clear
echo " "
echo "Installation has been completed!!"
echo " "
echo "=================================-Autoscript Premium Ridwan-===========================" | tee -a log-install.txt
echo "" | tee -a log-install.txt
echo "--------------------------------------------------------------------------------" | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Service & Port"  | tee -a log-install.txt
echo "   - OpenSSH                 : 22"  | tee -a log-install.txt
echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt
echo "   - Stunnel4                : 443"  | tee -a log-install.txt
echo "   - Dropbear                : 442, 777"  | tee -a log-install.txt
echo "   - Squid                   : 3128, 8080, 8888 (limit to IP Server)"  | tee -a log-install.txt
echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt
echo "   - Nginx                   : 81"  | tee -a log-install.txt
echo "   - Wireguard               : 7070"  | tee -a log-install.txt
echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt
echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt
echo "   - SSTP VPN                : 444"  | tee -a log-install.txt
echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt
echo "   - SS-OBFS TLS             : 1440"  | tee -a log-install.txt
echo "   - SS-OBFS HTTP            : 880"  | tee -a log-install.txt
echo "   - V2RAY Vmess TLS         : 445"  | tee -a log-install.txt
echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt
echo "   - Trojan                  : 446"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   >>> Server Information & Other Features"  | tee -a log-install.txt
echo "   - Timezone                : Asia/Jakarta (GMT +8)"  | tee -a log-install.txt
echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt
echo "   - Dflate                  : [ON]"  | tee -a log-install.txt
echo "   - IPtables                : [ON]"  | tee -a log-install.txt
echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt
echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt
echo "   - Autoreboot On 00:00 GMT +8" | tee -a log-install.txt
echo "   - Autobackup Data" | tee -a log-install.txt
echo "   - Restore Data" | tee -a log-install.txt
echo "   - Auto Delete Expired Account" | tee -a log-install.txt
echo "   - Full Orders For Various Services" | tee -a log-install.txt
echo "   - White Label" | tee -a log-install.txt
echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt
echo ""  | tee -a log-install.txt
echo "   - Telegram                : T.me/RocknetStore"  | tee -a log-install.txt
echo "------------------Script Mod Ridwan Store | VPN -----------------" | tee -a log-install.txt
echo ""
rm -f setup.sh
clear
neofetch
menu

