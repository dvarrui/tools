
require_relative 'debug'

require 'colorize'
require_relative 'debug'
require_relative 'read'

class FromRuby
  def self.to_python(filename)
    puts "[ From Ruby => to Python ] Filename: #{filename}...".cyan
    content = File.read(filename).split("\n")
    puts content.white
  end
end

