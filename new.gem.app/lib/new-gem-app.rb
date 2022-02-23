
require_relative 'new-gem-app/custom-params'

module NewGemApp

  def self.interactive(folder)
    puts "[ info ] Create skeleton into folder #{folder}..."
    custom = CustomParams.new.ask_user
  end

end
