#!/bin/bash
clear
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[0;35m'
Green="\033[32m"
Red="\033[31m"
WhiteB="\e[5;37m"
BlueCyan="\e[5;36m"
Green_background="\033[42;37m"
Red_background="\033[41;37m"
Suffix="\033[0m"


echo -e "${BlueCyan}==================================================${NC}"
echo -e "${yellow}                     menu settings"
echo -e "${BlueCyan}__________________________________________________${NC}"
echo -e "${WhiteB}"
echo
echo "[1].Add Host"
echo "[2].Renew Cert"
echo "[3].Dns pointing fix"
echo "[4].Themes"
echo "[5].speedtest"
echo "[6].kill all proces"
echo "[7].clear log"
echo "[8].reboot"
echo "[9].Autoreboot"
echo "[10].Change Banner Dropbear"
echo "[11].Auto kill multi login"
echo "[12].limit speed vps"
echo "[13].restart all service"
echo "[14].About"
echo -e "${BlueCyan}"
read -p    "Pilih Nomor :" bro


if [ $bro = 1 ] || [ $bro = 1 ]
then
addhost
fi
if [ $bro = 2 ] || [ $bro = 2 ]
then
genssl
fi
if [ $bro = 3 ] || [ $bro = 3 ]
then
fix
fi
if [ $bro = 4 ] || [ $bro = 4 ]
then
tema
fi
if [ $bro = 5 ] || [ $bro = 5 ]
then
cek-speed
if [ $bro = 6 ] || [ $bro = 6 ]
then
echo "kill all proces in your cpu"
killall /bin/bash /usr/bin/menu
fi
if [ $bro = 7 ] || [ $bro = 7 ]
then
clearlog
fi
if [ $bro = 8 ] || [ $bro = 8 ]
then
echo "Bobo dulu ye guys" | lolcat
sleep 2
reboot
fi
if [ $bro = 9 ] || [ $bro = 9 ]
then
autoreboot
fi
if [ $bro = 10 ] || [ $bro = 10 ]
then
nano /etc/issue.net
fi

if [ $bro = 11 ] || [ $bro = 11 ]
then
tendang
fi
if [ $bro = 12 ] || [ $bro = 12 ]
then
limitspeed
fi
if [ $bro = 13 ] || [ $bro = 13 ]
then
restart
fi

if [ $bro = 14 ] || [ $bro = 14 ]
then
neofetch
echo "${BlueCyan}==================================================="
echo "{WhiteB}              Credit Script By : Azigaming404"
echo "                 t.me/azigaming404"
echo "${BlueCyan}==================================================="
echo "--------------------------------------------------------------"
echo "                Terimakasih sudah menggunakan" 
echo "                   script premium CyberVPN"
echo "--------------------------------------------------------------"
fi
