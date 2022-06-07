# frozen_string_literal: true

require 'colorize'
require 'fileutils'
require_relative "iris/version"
require_relative 'iris/telegram'

module Iris
  CONFIGFILE = 'iris.yaml'

  def self.init
    puts "\n[INFO] Creating configuration file"
    target = File.join(File.dirname(__FILE__), 'iris', 'files', Iris::CONFIGFILE)
    dest = File.join(Iris::CONFIGFILE)

    if File.exist? dest
      puts "* Exists file!      => #{dest.yellow}"
      return true
    end

    begin
      FileUtils.cp(target, dest)
      puts "* Create file       => #{dest.green}"
    rescue StandardError
      puts "* Create file ERROR => #{dest.red}"
    end
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
