
class Custom
  def initialize(token:, bot_username:)
  end

  def init_actions
    hello = Regexp.new(action[:hello][:rex])
    bye = Regexp.new(action[:bye][:rex])

    @action = {
                hello: { rex: "/hello|hello#{bot_username}",
                         text: "Hello Word!" },
                bye: { rex:"/bye|bye#{bot_username}",
                       text: "Bye bye! I'm clossing the bot service..." }
              }
  end
end
