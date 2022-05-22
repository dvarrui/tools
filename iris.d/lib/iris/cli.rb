require 'thor'
require_relative '../iris'

class CLI < Thor
  map ['h', '-h', '--help'] => 'help'

  map ['v', '-v', '--version'] => 'version'
  desc 'version', 'Show the program version'
  def version
    puts Iris::VERSION
  end

  map ['i', '-i', '--interactive'] => 'interactive'
  desc 'interactive', 'Send message interactive mode'
  def interactive
    Iris.send_interactive_message
  end

  map ['f', '-f', '--file'] => 'file'
  option :name
  desc 'file [--name=FILENAME]', 'Send files as message'
  def file
    filename = options['name']
    Iris.send_file_as_message(filename)
  end

end
