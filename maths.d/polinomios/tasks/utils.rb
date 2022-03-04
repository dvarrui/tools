
##
# Module Utils with functions used by task/install.rb
module Utils
  def self.packages
    %w[colorize pry-byebug]
  end

  def self.filter_uninstalled_gems(list)
    cmd = `gem list`.split("\n")
    names = cmd.map { |i| i.split(' ')[0] }
    fails = []
    list.each { |i| fails << i unless names.include?(i) }
    fails
  end

  def self.install_gems(list)
    puts '[INFO] Installing Ruby gems...'
    fails = filter_uninstalled_gems(list)
    fails.each { |name| system("gem install #{name}") }
  end
end
