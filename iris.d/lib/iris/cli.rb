require 'thor'
require_relative '../iris'

class CLI < Thor
  map ['h', '-h', '--help'] => 'help'

  map ['v', '-v', '--version'] => 'version'
  desc 'version', 'Show the program version'
  def version
    puts Iris::VERSION
  end

  map ['--init'] => 'init'
  desc 'init', 'Create config file'
  def init
    Iris.init
  end

  map ['--chatid'] => 'chatid'
  desc 'chatid', 'Show Telegram chat ID'
  def chatid
    Iris.show_telegram_chatid
  end

  map ['s', '-s', '--send'] => 'send'
  option :text
  option :filename
  desc 'send [--text=MESSAGE | --filename=FILENAME]', 'Send message'
  def send
    Iris.send_message(options)
  end

  def self.exit_on_failure?
    false
  end
end
