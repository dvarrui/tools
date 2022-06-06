#!/usr/bin/env ruby

require 'telegram/bot'

module ShowChatId

  def self.call
    # token:
    # 1. Write your TOKEN value into "token" variable or
    # 2. Create a local file "private.token" with your TOKEN value inside
    token = `cat private.token`.strip
    bot_username = '@dvarrui_bot'

    puts "[INFO] Running bot #{@bot_username}..."

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        puts " <= #{message.text}"

        text = "Telegram Chat ID:  #{message.chat.id}"
        bot.api.send_message(chat_id: message.chat.id, text: text)
        puts " => Telegram Chat ID: #{text}"
        exit 0
      end
    end
  end
end
