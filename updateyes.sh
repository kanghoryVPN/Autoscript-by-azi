#!/bin/bash
echo -e cheking update
sleep 2
#hapus
rm -f /usr/bin/setting
rm -f /usr/bin/menu
rm -f /usr/bin/usernew
rm -f /usr/bin/autokill
#download
wget -q -O /usr/bin/menu "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/menu.sh"
wget -q -O /usr/bin/setting "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/Themes/setting.sh"
wget -q -O /usr/bin/usernew "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/menu/usernew.sh"

#izin
chmod 777 /usr/bin/usernew
chmod 777 /usr/bin/menu
chmod 777 /usr/bin/setting

wget -q -O insudp.sh https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/Ssh%20udp%20menu/insudp.sh && chmod +x insudp.sh && ./insudp.sh

rm -rf updateyes.sh
menu
