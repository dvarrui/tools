
require 'colorize'

class Rules

  def initialize(application)
    @app = application
  end

  def show(options = { 'full' => false, 'step' => true })
    full = options['full']
    step = options['step']

    full = true if step
    if full
      show_full(step: step)
    else
      show_only_names
    end
  end

  private

  def show_title
    dirbase = File.dirname(__FILE__)
    filepath = File.join(dirbase, 'files', 'title.txt')
    content = File.read(filepath)
    puts content
    puts
  end

  def show_full(step:)
    show_title

    @app.rules.each_with_index do |rule, index|
      principle = rule[:rule]
      puts "[#{(index + 1)}] #{principle}"
      desc = rule[:desc]
      if desc.is_a? String
        puts "#{desc}\n".white
      else
        desc.each_with_index do |line, index|
          text = "#{index}. #{line}".white
          text = "#{line}\n".white if index.zero?
          puts text
        end
      end
      puts
      if step
        print '[Press ENTER to continue]'
        STDIN.gets
        puts
      end
    end
  end

  def show_only_names
    show_title

    @app.rules.each_with_index do |rule, index|
      principle = rule[:rule]
      puts "[#{(index + 1)}] #{principle}"
    end
  end

end
