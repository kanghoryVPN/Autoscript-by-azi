#!/bin/bash
echo -e cheking update
sleep 2
#hapus
rm -f /usr/bin/setting
rm -f /usr/bin/menu
rm -f /usr/bin/usernew

#download
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/menu.sh"
wget -q -O /usr/bin/setting "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/Themes/setting.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/menu/usernew.sh"
wger -q -O /usr/bin/tendang "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/limit/tendang.sh"

#izin
chmod 777 /usr/bin/usernew
chmod 777 /usr/bin/menu
chmod 777 /usr/bin/setting
chmod 777 /usr/bin/tendang

rm -rf updateyes.sh
menu
