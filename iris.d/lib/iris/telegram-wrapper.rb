
require 'colorize'
require 'telegram/bot'
require_relative 'application'

module Iris
  class TelegramWrapper
    def initialize
      @token = Application.instance.telegram[:token]
      @bot_username = Application.instance.telegram[:bot_username]
      @chatid = Application.instance.telegram[:chatid]
      @enable = Application.instance.telegram[:enable]
    end

    def show_chatid
      puts "===> [Telegram] Running bot #{@bot_username}..."
      Telegram::Bot::Client.run(@token) do |bot|
        bot.listen do |message|
          puts "<=== [Telegram] Received: #{message.text}".white

          text = "Chat ID:  #{message.chat.id}"
          bot.api.send_message(chat_id: message.chat.id, text: text)
          puts "===> [Telegram] Send: #{text}"
          return true
        end
      end
    end

    def send_text(text)
      return false unless @enable
      puts "===> [Telegram] #{@bot_username} sending message...".light_yellow
      send(text)
    end

    def send_file(filename)
      return false unless @enable
      puts "===> [Telegram] #{@bot_username} sending file #{filename}...".light_yellow
      send(File.read(filename))
    end

    private

    def send(text)
      Telegram::Bot::Client.run(@token) do |bot|
        bot.api.send_message(chat_id: @chatid, text: text)
        puts "     #{text}".white
        return true
      end
    end
  end
end
