# frozen_string_literal: true

require 'colorize'
require_relative "iris/version"
require_relative 'iris/show_chatid'

module Iris
  def self.show_telegram_chatid
    ShowChatId.call
  end

  def self.send_message(filename)
    if filename.nil?
      puts "===> Sending interactive message.".white
    else
      puts "===> Sending <#{filename}> file as message.".white
    end
  end
end
