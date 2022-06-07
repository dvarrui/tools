# frozen_string_literal: true

require 'colorize'
require 'fileutils'
require_relative "iris/version"
require_relative 'iris/skeleton'
require_relative 'iris/telegram-wrapper'
require_relative 'iris/twitter-wrapper'

module Iris

  def self.init
    Skeleton.create
  end

  def self.show_telegram_chatid
    Iris::TelegramWrapper.new.show_chatid
  end

  def self.send_message(options)
    puts "===> [Iris] sending messages...".light_yellow
    filename = options['filename']
    text = options['text']

    Iris::TelegramWrapper.new.send_file(filename) if filename
    if text
      Iris::TelegramWrapper.new.send_text(text)
      Iris::TwitterWrapper.new.send_text(text)
    end
  end
end
