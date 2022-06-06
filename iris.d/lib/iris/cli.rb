require 'thor'
require_relative '../iris'

class CLI < Thor
  map ['h', '-h', '--help'] => 'help'

  map ['v', '-v', '--version'] => 'version'
  desc 'version', 'Show the program version'
  def version
    puts Iris::VERSION
  end

  map ['--chatid'] => 'chatid'
  desc 'chatid', 'Show Telegram chat ID'
  def chatid
    Iris.show_telegram_chat_id
  end

  map ['f', '-f', '--file'] => 'file'
  option :name
  desc 'file [--name=FILENAME]', 'Send files as message'
  def file
    filename = options['name']
    Iris.send_file_as_message(filename)
  end

  map ['s', '-s', '--send'] => 'send'
  desc 'send', 'Send message interactively'
  def send
    Iris.send_interactive_message
  end


end
