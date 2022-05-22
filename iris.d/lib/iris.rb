# frozen_string_literal: true

require_relative "iris/version"
require 'colorize'

module Iris

  def self.send_interactive_message
    puts "===> Sending interactive message.".white
  end

  def self.send_file_as_message(filename)
    puts "===> Sending <#{filename}> file as message.".white
  end
end
