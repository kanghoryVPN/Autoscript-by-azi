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
wget -q -O /usr/bin/autokill "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/limit/autokill.sh"
wget -q -O /usr/bin/infosc "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/limit/info.sh" && chmod +x /usr/bin/infosc
wget -q -O /usr/bin/pelanggar "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/limit/pelanggar.sh" && chmod +x /usr/bin/pelanggar
#izin
chmod 777 /usr/bin/usernew
chmod 777 /usr/bin/menu
chmod 777 /usr/bin/setting
chmod 777 /usr/bin/autokill

rm -rf updateyes.sh
menu
