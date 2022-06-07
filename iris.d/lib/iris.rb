# frozen_string_literal: true

require 'colorize'
require 'fileutils'
require_relative "iris/version"
require_relative 'iris/skeleton'
require_relative 'iris/telegram'

module Iris

  def self.init
    Skeleton.create
  end

  def self.show_telegram_chatid
    Iris::Telegram.new.show_chatid
  end

  def self.send_message(options)
    filename = options['filename']
    text = options['text']

    Iris::Telegram.new.send_file(filename) if filename
    Iris::Telegram.new.send_text(text) if text
  end
end
