
require 'telegram/bot'
require_relative 'application'

class MyTelegram

  def initialize
    @token = Application.instance.telegram[:token]
    @bot_username = Application.instance.telegram[:bot_username]
    @chatid = Application.instance.telegram[:chatid]
  end

  def show_chatid
    puts "===> Running Telegram bot #{@bot_username}..."
    Telegram::Bot::Client.run(@token) do |bot|
      bot.listen do |message|
        puts "<=== #{message.text}"

        text = "Telegram Chat ID:  #{message.chat.id}"
        bot.api.send_message(chat_id: message.chat.id, text: text)
        puts "===> #{text}"
        exit 0
      end
    end
  end

  def send_text(text)
    puts "===> Running Telegram bot #{@bot_username}..."
    Telegram::Bot::Client.run(@token) do |bot|
      bot.api.send_message(chat_id: @chatid, text: text)
      puts "===> #{text}"
      exit 0
    end
  end
end
