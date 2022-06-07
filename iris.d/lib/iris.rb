# frozen_string_literal: true

require 'colorize'
require_relative "iris/version"
require_relative 'iris/my-telegram'

module Iris
  def self.show_telegram_chatid
    MyTelegram.new.show_chatid
  end

  def self.send_message(filename)
    if filename.nil?
      MyTelegram.new.send_text("Sending interactive message.")
    else
      puts "===> Sending <#{filename}> file as message.".white
    end
  end
end
