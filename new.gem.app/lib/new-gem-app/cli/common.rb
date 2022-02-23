
require_relative '../version'

class CLI < Thor

  map ['h', '-h', '--help'] => 'help'

  map ['v', '-v', '--version'] => 'version'
  desc 'version', 'Show the program version'
  def version
    puts "#{Version::NAME} #{Version::VERSION}"
  end

end
