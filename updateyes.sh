#!/bin/bash
echo -e cheking update
sleep 2
#hapus
rm -f /usr/bin/setting
rm -f /usr/bin/menu
rm -f /usr/bin/usernew
rm -f /usr/bin/menu-trojan
#download
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/menu.sh"
wget -q -O /usr/bin/setting "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/Themes/setting.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/menu/usernew.sh"
wget -q -O /usr/bin/running "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/running.sh"
wget -q -O /usr/bin/menu-trojan "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/tes/menu-trojan.sh"
#izin
chmod 777 /usr/bin/usernew
chmod 777 /usr/bin/menu
chmod 777 /usr/bin/setting
chmod 777 /usr/bin/menu-trojan

rm -rf updateyes.sh
menu
