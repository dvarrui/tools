
require_relative 'utils'

namespace :install do
  desc 'Check installation'
  task :check do
    fails = Utils.filter_uninstalled_gems(Utils.packages)
    puts "[ FAIL ] Gems to install!: #{fails.join(',')}" unless fails == []
    Utils.check_tests
  end

  desc 'Install gems'
  task :gems do
    Utils.install_gems(Utils.packages)
  end

  desc 'Symbolic link'
  task :link do
    Utils.create_symbolic_link
  end
end
