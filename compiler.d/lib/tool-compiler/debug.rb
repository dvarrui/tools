
require 'colorize'

class Debug
  def self.puts(text, color=:yellow)
    STDOUT.puts text.send(color)
  end

  def self.puts_array(lines)
    lines.each_with_index do |line, index|
      pindex = "%02d" % index
      puts " #{pindex} | #{line}".white
    end
  end

  def self.stop
    require 'pry-byebug'; binding.pry
  end
end
