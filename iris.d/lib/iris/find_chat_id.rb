
require 'telegram/bot'
require 'colorize'
require_relative 'bot'

class FindChatId
  def self.call
    token = Bot.new.token
    Telegram::Bot::Client.run(token) do |bot|
      bot.listen do |message|
        chatid = message.chat.id
        puts "    chatid = #{chatid}".light_yellow
        exit 0
      end
    end
  end
end
