#!/bin/bash
# install bot
wget -q -O /usr/bin/bot "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/Finaleuy/ssh-telegram.sh"
#izin bot
chmod +x /usr/bin/bot
# install server bot
wget -O /etc/systemd/system/telebot.service "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/Finaleuy/telebot.service"
#izin server bot
chmod +x /etc/systemd/system/telebot.service

#enable bot
