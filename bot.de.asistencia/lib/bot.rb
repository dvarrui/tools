
require 'telegram/bot'
require_relative 'application'
require_relative 'answer'

module Bot

  def self.run(filename)
    answer       = Answer.new(filename)
    token        = Application.instance.token
    bot_username = Application.instance.bot_username

    puts "===> Running bot #{bot_username}..."

    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        if message.text.start_with? '/'
          input = message.text.gsub('/','')
          bot.api.send_message(chat_id: message.chat.id, text: answer.to(input))
        end
      end
    end
  end
end
