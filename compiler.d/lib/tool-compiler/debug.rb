
require 'colorize'

class Debug
  def self.puts(text, color=:default)
    STDOUT.puts text.send(color)
  end

  def self.puts_array(lines, color=:white)
    lines.each_with_index do |line, index|
      pindex = "%02d" % (index + 1)
      STDOUT.puts " #{pindex} | #{line}".send color
    end
  end

  def self.stop
    require 'pry-byebug'; binding.pry
  end
end
