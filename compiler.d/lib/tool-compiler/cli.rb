
require 'thor'
require_relative 'version'
require_relative '../tool-compiler'

class CLI < Thor
  map ['--help'] => 'help'

  map ['--version'] => 'version'
  desc 'version', 'Show the program version'
  def version
    puts "#{Version::NAME} version #{Version::VERSION}"
    exit 0
  end

  map ['--py2rb', 'py2rb', '--python2ruby'] => 'python2ruby'
  desc 'python2ruby FILENAME', 'Compile Python file to Ruby'
  def python2ruby(filename)
    Compiler.python2ruby(filenam)
  end

  map ['--rb2py2', 'rb2py2', '--ruby2python'] => 'ruby2python'
  desc 'ruby2python FILENAME', 'Compile Ruby file to Python'
  def ruby2python(filename)
    Compiler.ruby2python(filenam)
  end

  def method_missing(method, *_args, &_block)
    link(method.to_s)
  end

  def respond_to_missing?(_method_name)
    true
  end

  def self.exit_on_failure?
    true
  end
end
