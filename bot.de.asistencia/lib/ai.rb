
class Custom
  attr_reader :action

  def initialize(bot_username)
    init_actions(bot_username)
  end

  def init_actions(bot_username)
    @action = {
                chatid: { rex: "/chatid|chatid#{bot_username}",
                         text: "chat_id = " },
                hello: { rex: "/hello|hello#{bot_username}",
                         text: "Hello Word!" },
                bye: { rex:"/bye|bye#{bot_username}",
                       text: "Bye bye! I'm clossing the bot service..." }
              }
  end
end
