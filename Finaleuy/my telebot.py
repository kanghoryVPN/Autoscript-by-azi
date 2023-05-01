import TeleBot

api = '6226368145:AAGaFLgpYKcH7JppfHptqyWowndyO_IENEU'
bot = telebot.TeleBot(api)

@bot.message_hendler(commands=['start'])
def send_welcome(message):
    bot.reply_to(message,'halo silahkan buat akun sshmu')

    bot.polling()
