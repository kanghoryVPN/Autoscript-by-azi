#!/bin/bash
# =========================================
vlx=$(grep -c -E "^#& " "/etc/xray/config.json")

vmc=$(grep -c -E "^### " "/etc/xray/config.json")

ssh1="$(awk -F: '$3 >= 1000 && $1 != "nobody" {print $1}' /etc/passwd | wc -l)"

trx=$(grep -c -E "^#! " "/etc/xray/config.json")

ssx=$(grep -c -E "^## " "/etc/xray/config.json")
#######PERIZINAN
BURIQ () {
    curl -sS https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/izin > /root/tmp
    data=( `cat /root/tmp | grep -E "^### " | awk '{print $2}'` )
    for user in "${data[@]}"
    do
    exp=( `grep -E "^### $user" "/root/tmp" | awk '{print $3}'` )
    d1=(`date -d "$exp" +%s`)
    d2=(`date -d "$biji" +%s`)
    exp2=$(( (d1 - d2) / 86400 ))
    if [[ "$exp2" -le "0" ]]; then
    echo $user > /etc/.$user.ini
    else
    rm -f /etc/.$user.ini > /dev/null 2>&1
    fi
    done
    rm -f /root/tmp
}

MYIP=$(curl -sS ipv4.icanhazip.com)
Name=$(curl -sS https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/izin | grep $MYIP | awk '{print $2}')
echo $Name > /usr/local/etc/.$Name.ini
CekOne=$(cat /usr/local/etc/.$Name.ini)

Bloman () {
if [ -f "/etc/.$Name.ini" ]; then
CekTwo=$(cat /etc/.$Name.ini)
    if [ "$CekOne" = "$CekTwo" ]; then
        res="Expired"
    fi
else
res="Permission Accepted..."
fi
}

PERMISSION () {
    MYIP=$(curl -sS ipv4.icanhazip.com)
    IZIN=$(curl -sS https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/izin | awk '{print $4}' | grep $MYIP)
    if [ "$MYIP" = "$IZIN" ]; then
    Bloman
    else
    res="Permission Denied!"
    fi
    BURIQ
}
red='\e[1;31m'
green='\e[1;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
PERMISSION

if [ "$res" = "Expired" ]; then
Exp="\e[36mExpired\033[0m"
else
Exp=$(curl -sS https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/izin | grep $MYIP | awk '{print $3}')
fi

clear
# // Exporting Language to UTF-8
export LC_ALL='en_US.UTF-8'
export LANG='en_US.UTF-8'
export LANGUAGE='en_US.UTF-8'
export LC_CTYPE='en_US.utf8'

# // Export Color & Information
export RED='\033[0;31m'
export GREEN='\033[0;32m'
export YELLOW='\033[0;33m'
export BLUE='\033[0;34m'
export PURPLE='\033[0;35m'
export CYAN='\033[0;36m'
export LIGHT='\033[0;37m'
export NC='\033[0m'

# // Export Banner Status Information
export EROR="[${RED} EROR ${NC}]"
export INFO="[${YELLOW} INFO ${NC}]"
export OKEY="[${GREEN} OKEY ${NC}]"
export PENDING="[${YELLOW} PENDING ${NC}]"
export SEND="[${YELLOW} SEND ${NC}]"
export RECEIVE="[${YELLOW} RECEIVE ${NC}]"

# // Export Align
export BOLD="\e[1m"
export WARNING="${RED}\e[5m"
export UNDERLINE="\e[4m"

# // Exporting URL Host
export Server_URL="autosc.me/aio"
export Server_Port="443"
export Server_IP="underfined"
export Script_Mode="Stable"
export Auther="XdrgVPN"

# // Root Checking
if [ "${EUID}" -ne 0 ]; then
                echo -e "${EROR} Please Run This Script As Root User !"
                exit 1
fi

# // Exporting IP Address
export IP=$( curl -s https://ipinfo.io/ip/ )

# // SSH Websocket Proxy
ssh_ws=$( systemctl status ws-epro | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $ssh_ws == "running" ]]; then
    status_ws="${GREEN}ON${NC}"
else
    status_ws="${RED}OFF${NC}"
fi

# // nginx
nginx=$( systemctl status nginx | grep Active | awk '{print $3}' | sed 's/(//g' | sed 's/)//g' )
if [[ $nginx == "running" ]]; then
    status_nginx="${GREEN}ON${NC}"
else
    status_nginx="${RED}OFF${NC}"
fi

# // SSH Websocket Proxy
xray=$(/etc/init.d/ssh status | grep Active | awk '{print $3}' | cut -d "(" -f2 | cut -d ")" -f1)
if [[ $xray == "running" ]]; then
    status_xray="${GREEN}ON${NC}"
else
    status_xray="${RED}OFF${NC}"
fi

clear
clear
function add-host(){
clear
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e " ${COLBG1}               • ADD VPS HOST •                ${NC}"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
read -rp "  New Host Name : " -e host
echo ""
if [ -z $host ]; then
echo -e "  [INFO] Type Your Domain/sub domain"
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to back on menu"
menu
else
echo "IP=$host" > /var/lib/ssnvpn-pro/ipvps.conf
echo ""
echo "  [INFO] Dont forget to renew cert"
echo ""
echo -e "$COLOR1━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo ""
read -n 1 -s -r -p "  Press any key to Renew Cret"
crtxray
fi
}
clear
clear
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m              ⇱ INFORMASI VPS                  \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e "□ Server Uptime       = $( uptime -p  | cut -d " " -f 2-10000 ) "
echo -e "□ Current Time        = $( date -d "0 days" +"%d-%m-%Y | %X" )"
echo -e "□ Operating System    = $( cat /etc/os-release | grep -w PRETTY_NAME | sed 's/PRETTY_NAME//g' | sed 's/=//g' | sed 's/"//g' ) ( $( uname -m) )"
echo -e "□ Current Domain      = $( cat /etc/xray/domain )"
echo -e "□ Server IP           = ${IP}"
echo -e "□ Clients Name        = $Name"
echo -e "□ Expired Script VPS  = $Exp"
echo -e "□ INFO UPDATE         = ${GREEN}$(cat /root/status)${NC}"
echo -e "□ License Limit       = 3 VPS ${GREEN}( Persatu IP VPS )${NC}"
echo -e "□ AutoScript By       =  ${GREEN}( AZI GAMING404 )${NC}"

echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m            ⇱ STATUS LAYANAN ⇲                 \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -e " [ ${GREEN}SSH WebSocket${NC} : ${GREEN}ON ${NC}] [ ${GREEN}XRAY${NC} : ${status_xray} ]"  
echo -e " [ ${GREEN}NGINX${NC} : ${status_nginx} ]"
echo -e "$COLOR1┌───────────────────────────────────────────────┐${NC}"
echo -e "$COLOR1│\033[0m ${BOLD}${YELLOW}SSH  VMESS   VLESS  TROJAN   SHADOWSOCKS$NC"
echo -e "$COLOR1│\033[0m ${Blue} $ssh1     $vmc       $vlx      $trx           $ssx   $NC"
echo -e "$COLOR1└───────────────────────────────────────────────┘${NC}"
echo -e "${RED}                   V.3.0.0 LTS"
echo -e ""
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                 ⇱ CYBER VPN ⇲                 \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e ""
echo -e "${COLOR1}[01]${NC} • [${YELLOW}SSH${NC}]         ${COLOR1}[11]${NC} • [${YELLOW}BACKUP${NC}]"
echo -e "${COLOR1}[02]${NC} • [${YELLOW}VMESS${NC}]       ${COLOR1}[12]${NC} • [${YELLOW}INFO RUNNING${NC}]"          
echo -e "${COLOR1}[03]${NC} • [${YELLOW}VLESS${NC}]       ${COLOR1}[13]${NC} • [${YELLOW}INFORMATION${NC}]"  
echo -e "${COLOR1}[04]${NC} • [${YELLOW}TROJAN${NC}]      ${COLOR1}[14]${NC} • [${YELLOW}ADD DOMAIN${NC}]"
echo -e "${COLOR1}[05]${NC} • [${YELLOW}SODOSOK${NC}]     ${COLOR1}[15]${NC} • [${YELLOW}CERT${NC}]"
echo -e "${COLOR1}[06]${NC} • [${YELLOW}SET DNS${NC}]     ${COLOR1}[16]${NC} • [${YELLOW}WEBMIN${NC}]"
echo -e "${COLOR1}[07]${NC} • [${YELLOW}REBOOT  ${NC}]    ${COLOR1}[17]${NC} • [${YELLOW}CHANGE PW VPS${NC}]"
echo -e "${COLOR1}[08]${NC} • [${YELLOW}AUTO KILL${NC}]   ${COLOR1}[18]${NC} • [${YELLOW}AUTO REBOOT${NC}]"
echo -e "${COLOR1}[09]${NC} • [${YELLOW}AUTO REBOOT${NC}] ${COLOR1}[19]${NC} • [${YELLOW}RESTART ALL SERVCE${NC}]"
echo -e "${COLOR1}[10]${NC} • [${YELLOW}BANNER VPS${NC}]  ${COLOR1}[20]${NC} • [${YELLOW}UPDATE SCRIPT${NC}]"
echo -e " ${RED}"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"
echo -e "\E[44;1;39m                ⇱ AZI GAMING404 ⇲              \E[0m"
echo -e "${CYAN}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m${NC}"

echo -e ""

echo -ne " Select menu : "; read opt
case $opt in
01 | 1) clear ; menu-ssh ;;
02 | 2) clear ; menu-vmess ;;
03 | 3) clear ; menu-vless ;;
04 | 4) clear ; menu-trojan ;;
05 | 5) clear ; menu-ss ;;
06 | 6) clear ; fix ;;
07 | 7) clear ; reboot ;;
08 | 8) clear ;  tendang ;;
09 | 9) clear ; autoreboot ;;
10) clear ; nano /etc/issue.net ;;
11) clear ; menu-backup ;;
12) clear ; running ;;
13) clear ; cat /root/log-install.txt ;;
14) clear ; addhost ;;
15) clear ; genssl ;;
16) clear ; wbm ;;
17) clear ; passwd ;;
18) clear ; autoreboot ;;
19) clear ; restart ;;
20) clear ; updatsc ;;
100) clear ; $up2u ;;
00 | 0) clear ; menu ;;
*) clear ; menu ;;
esac
