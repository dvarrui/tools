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
    Iris.show_telegram_chatid
  end

  map ['s', '-s', '--send'] => 'send'
  option :filename
  desc 'send [--file=FILENAME]', 'Send message'
  def send
    Iris.send_message(options['file'])
  end

end
