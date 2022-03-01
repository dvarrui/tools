
require_relative 'tool-markdown/markdown/link'
require_relative 'tool-markdown/version'

class Markdown
  def self.link(dirname, options)
    if options['info']
      Markdown::Link.show_info dirname
      exit 0
    end

    if options['check']
      Markdown::Link.check dirname
      exit 0
    end

    puts "Usage: #{Version::NAME} help"
    exit 1
  end
end
