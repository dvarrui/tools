
class Bot
  attr_reader :username
  attr_reader :token

  def initalize
    @bot_username = '@dvarrui_bot'
    filename = File.join(__FILE__, '..', '..', 'private', 'token')
    @token = `cat #{filename}`.chomp
    @token = "644014604:AAFphQGowc2kBn663ZxIVN1NpcoMQGKeBDE
"
  end
end
