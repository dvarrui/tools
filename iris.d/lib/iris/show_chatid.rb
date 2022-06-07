#!/usr/bin/env ruby

require 'telegram/bot'
require_relative 'application'

module ShowChatId

  def self.call
    token = Application.instance.token
    bot_username = Application.instance.bot_username

    puts "===> Running Telegram bot #{bot_username}..."
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        puts "<=== #{message.text}"

        text = "Telegram Chat ID:  #{message.chat.id}"
        bot.api.send_message(chat_id: message.chat.id, text: text)
        puts "===> #{text}"
        exit 0
      end
    end
  end
end
