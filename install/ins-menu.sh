#!/bin/bash
apt-get install unzip -y
cd /usr/local/bin
wget "https://raw.githubusercontent.com/myridwan/scssh/ipuk/menu/menu.zip"
unzip menu.zip
chmod +x /usr/local/bin/*
sleep 2

echo "0 0 * * * root xp-ss" >> /etc/crontab
echo "0 0 * * * root xp-wg" >> /etc/crontab
echo "0 0 * * * root xp-ws" >> /etc/crontab
echo "0 0 * * * root exp-ssr" >> /etc/crontab
echo "0 0 * * * root exp" >> /etc/crontab
echo "0 0 * * * root exptrojan" >> /etc/crontab
echo "0 0 * * * root xp" >> /etc/crontab
echo "0 5 * * * root clear-log && reboot" >> /etc/crontab
