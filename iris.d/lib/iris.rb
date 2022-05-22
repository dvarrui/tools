# frozen_string_literal: true

require 'colorize'
require_relative "iris/version"
require_relative 'iris/find_chat_id'

module Iris

  def self.find_telegram_chat_id
    FindChatId.call
  end

  def self.send_interactive_message
    puts "===> Sending interactive message.".white
  end

  def self.send_file_as_message(filename)
    puts "===> Sending <#{filename}> file as message.".white
  end
end
