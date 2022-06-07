# frozen_string_literal: true

require 'colorize'
require 'fileutils'
require_relative "iris/version"
require_relative 'iris/skeleton'
require_relative 'iris/telegram-wrapper'

module Iris

  def self.init
    Skeleton.create
  end

  def self.show_telegram_chatid
    Iris::TelegramWrapper.new.show_chatid
  end

  def self.send_message(options)
    filename = options['filename']
    text = options['text']

    Iris::TelegramWrapper.new.send_file(filename) if filename
    Iris::TelegramWrapper.new.send_text(text) if text
  end
end
