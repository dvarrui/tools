require 'singleton'
require 'yaml'

class Application
  include Singleton

  attr_reader :token
  attr_reader :bot_username
  attr_reader :faq

  def initialize
    @token = `cat private.token`.strip
    @bot_username = '@dvarrui_bot'
    @faq = YAML.load('data/demo.yaml')
  end
end
