
require 'twitter'
require_relative 'application'

module Iris
  class TwitterWrapper
    def initialize
      app = Application.instance
      @client = Twitter::REST::Client.new do |config|
        config.consumer_key        = app.twitter[:api_key]
        config.consumer_secret     = app.twitter[:api_key_secret]
      end
    end

    def send_text(text)
      puts "===> [Twitter] sending message...".cyan
      send(text)
    end

    def send_file(filename)
      puts "===> [Twitter] sending file #{filename}...".cyan
      send(File.read(filename))
    end

    private

    def send(text)
      #@client.update(text)
      puts "     #{text}".white
    end
  end
end
