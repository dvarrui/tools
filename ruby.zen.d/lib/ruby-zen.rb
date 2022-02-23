
require_relative 'ruby-zen/params'
require_relative 'ruby-zen/application'
require_relative 'ruby-zen/rules'

class RubyZen

  def self.version
    puts "#{Params::NAME} (version #{Params::VERSION})"
  end

  def self.langs
    langs = Params::LANGS
    puts "Available langs: #{langs.join(', ')}"
  end

  def self.show(options)
    app = Application.new
    Rules.new(app).show(options)
  end
end
