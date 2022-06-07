
require 'colorize'
require 'fileutils'

module Skeleton
  CONFIGFILE = 'iris.yaml'

  def self.create
    puts "\n[INFO] Creating configuration file"
    target = File.join(File.dirname(__FILE__), 'iris', 'files', CONFIGFILE)
    dest = File.join(CONFIGFILE)

    if File.exist? dest
      puts "* Exists file!      => #{dest.yellow}"
      return true
    end

    begin
      FileUtils.cp(target, dest)
      puts "* Create file       => #{dest.green}"
    rescue StandardError
      puts "* Create file ERROR => #{dest.red}"
    end
  end
end
