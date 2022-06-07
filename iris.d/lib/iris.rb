# frozen_string_literal: true

require 'colorize'
require_relative "iris/version"
require_relative 'iris/my-telegram'

module Iris
  def self.show_telegram_chatid
    MyTelegram.new.show_chatid
  end

  def self.send_message(options)
    filename = options['filename']
    text = options['text']

    MyTelegram.new.send_file(filename) if filename
    MyTelegram.new.send_text(text) if text
  end
end
