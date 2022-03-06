
require_relative 'debug'

class FromRuby
  def self.to_python(filename)
    Debug.puts "[ From Ruby => to Python ] Filename: #{filename}...", :cyan
    lines = File.read(filename).split("\n")
    Debug.puts_array lines
  end
end
