
require_relative 'tool-compiler/from_python'
require_relative 'tool-compiler/from_ruby'
require_relative 'tool-compiler/version'

class Compiler
  def self.python2ruby(filename)
    output = FromPython.to_ruby(filename)
    puts output
  end

  def self.ruby2python(filename)
    output = FromRuby.to_python(filename)
    puts output
  end

  def self.usage
    puts "Usage: #{Version::NAME} help"
    exit 1
  end
end
