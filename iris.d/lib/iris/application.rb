
require 'singleton'
require 'yaml'
require_relative 'skeleton'

class Application
  include Singleton

  def initialize
    @data = load_configuration
  end

  def telegram
    @data[:telegram]
  end

  def twitter
    @data[:twitter]
  end

  private

  def load_configuration
    dirbase = File.dirname(__FILE__)
    filepath = File.join(dirbase, '..', '..', Skeleton::CONFIGFILE)
    content = File.read filepath
    data = YAML.load(content)

    data
  end

end
