#!/bin/bash
# install bot
wget -q -O /root/bot.sh "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/Finaleuy/bot.sh"
#izin bot
chmod +x /root/bot.sh
# install server bot
wget -O /etc/systemd/system/telebot.service "https://raw.githubusercontent.com/Azigaming404/Autoscript-by-azi/main/Finaleuy/telebot.service"
#izin server bot
chmod +x /etc/systemd/system/telebot.service

#enable bot hehe
systemctl daemon-reload
systemctl enable telebot.service
systemctl start telebot.service
systemctl restart telebot.service
