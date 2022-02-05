
require_relative 'tasks/build'
require_relative 'tasks/install'
require_relative 'tasks/push'
require_relative 'tasks/params'

desc 'Default: check'
task :default do
  Rake::Task['help'].invoke
end

desc 'Rake help'
task :help do
  system('rake -T')
end
