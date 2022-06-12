require 'singleton'
require 'yaml'

class Application
  include Singleton

  attr_reader :token
  attr_reader :bot_username

  def initialize
    @token = `cat private.token`.strip
    @bot_username = '@dvarrui_bot'
  end
end
