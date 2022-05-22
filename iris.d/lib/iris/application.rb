
class Application
  attr_reader :token

  def initalize
    filename = File.join(__FILE__, '..', '..', 'private', 'token')
    @token = `cat #{filename}`.chomp
  end
end
