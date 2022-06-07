
require 'singleton'
require 'yaml'

class Application
  include Singleton

  attr_reader :token
  attr_reader :bot_username

  def initialize
    data = load_configuration
    @token = data[:telegram][:token]
    @bot_username = data[:telegram][:bot_username]
  end

  private

  def load_configuration
    dirbase = File.dirname(__FILE__)
    filepath = File.join(dirbase, '..', '..', 'private.config.yaml')
    content = File.read filepath
    data = YAML.load(content)

    data
  end

end
