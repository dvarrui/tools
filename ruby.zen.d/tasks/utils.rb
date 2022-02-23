
require_relative '../lib/ruby-zen/params'

module Utils
  ##
  # Group general functions used by Rakefile tasks
  def self.packages
    p = %w[yaml colorize thor terminal-table]
    p += %w[minitest yard rubocop]
    p
  end

  def self.create_symbolic_link
    filepath = "/usr/local/bin/#{Params::NAME}"
    if File.exist? filepath
      puts "[WARN] Exist #{filepath} file!"
      return
    end
    puts "[INFO] Creating symbolic link #{filepath}"
    basedir = File.join(File.dirname(__FILE__), '..')
    target = File.join(basedir, Params::NAME)
    cmd = "ln -s #{target} #{filepath}"
    puts " => #{cmd}"
    ok = system(cmd)
    puts "[INFO] Ok" if ok
  end

  def self.install_gems(list, options = '')
    fails = filter_uninstalled_gems(list)
    if !fails.empty?
      puts "[INFO] Installing gems (options = #{options})..."
      fails.each do |name|
        system("gem install #{name} #{options}")
      end
    else
      puts '[ OK ] Gems installed'
    end
  end

  def self.filter_uninstalled_gems(list)
    cmd = `gem list`.split("\n")
    names = cmd.map { |i| i.split(' ')[0] }
    fails = []
    list.each { |i| fails << i unless names.include?(i) }
    fails
  end

  def self.check_tests
    testfile = File.join('.', 'tests', 'all.rb')
    a = File.read(testfile).split("\n")
    b = a.select { |i| i.include? '_test' }
    d = File.join('.', 'tests', '**', '*_test.rb')
    e = Dir.glob(d)
    puts "[FAIL] Some ruby tests are not executed by #{testfile}" unless b.size == e.size
    puts "[INFO] Running #{testfile}"
    system(testfile)
  end
end
