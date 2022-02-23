# frozen_string_literal: true

require 'thor'
require_relative 'params'
require_relative "../#{Params::GEMNAME}"

class CLI < Thor
  map ['h', '-h', '--help'] => 'help'

  map ['v', '-v', '--version'] => 'version'
  desc 'version', 'Show the program version'

  def version
    RubyZen.version
  end

  map ['--langs', '-l'] => 'langs'
  desc 'langs', 'Display available languages'
  long_desc <<-LONGDESC
    Display available languages
  LONGDESC
  def langs
    RubyZen.langs
  end

  map ['-s', '--show'] => 'show'
  option :more, type: :boolean
  option :step, type: :boolean
  option :lang, type: :string
  desc 'show [LANG]', 'Display ZEN rules in the chosen language'
  long_desc <<-LONGDESC
    Display the rules in the chosen language
  LONGDESC
  def show
    # Typical error... write show(options) instead of show! jajaja
    RubyZen.show(options)
  end

  def method_missing(method, *_args, &_block)
    puts "[ERROR] #{method} unknown!"
  end

  def respond_to_missing?(_method_name)
    true
  end

  def self.exit_on_failure?
    # Thor stop and show messages on screen on failure
    true
  end

end
