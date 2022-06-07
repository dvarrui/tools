#!/usr/bin/env ruby

require 'telegram/bot'
require_relative 'application'

module Telegram

  def self.send(text)
    token = Application.instance.token
    bot_username = Application.instance.bot_username
    chaid = Application.instance.chatid

    puts "===> Running Telegram bot #{bot_username}..."
    Telegram::Bot::Client.run(token) do |bot|
      bot.api.send_message(chat_id: chatid, text: text)
      exit 0
    end
  end
end
