
require 'colorize'
require_relative 'debug'
require_relative 'read'

class FromPython
  def self.to_ruby(filename)
    puts "[ From Python => to Ruby ] Filename: #{filename}...".cyan
    content = File.read(filename).split("\n")
    puts content.white
  end
end
