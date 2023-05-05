import os
import telebot
import subprocess
token = os.environ.get( 'tokenbot' )
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
