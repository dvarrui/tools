
require_relative 'debug'

class FromPython
  def self.to_ruby(filename)
    Debug.puts "[ From Python => to Ruby ] Filename: #{filename}...", :cyan
    lines = File.read(filename).split("\n")
    Debug.puts_array lines
  end
end
