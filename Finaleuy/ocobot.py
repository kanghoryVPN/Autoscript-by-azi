
import telebot
import subprocess
token = ( '6226368145:AAGaFLgpYKcH7JppfHptqyWowndyO_IENEU' )
bot = telebot.TeleBot(token)
rc = subprocess.call("neofetch")
# Menghandle Pesan /start
@bot.message_handler(commands=['start'])
def welcome(message):
    # membalas pesan
    bot.reply_to(message, rc)
    while True:
    try:
        bot.polling()
    except:
        pass
