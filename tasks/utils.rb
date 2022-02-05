
module Utils
  ##
  # Group general functions used by Rakefile tasks
  def self.packages
    %w[ruby-zen minitest]
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
end
