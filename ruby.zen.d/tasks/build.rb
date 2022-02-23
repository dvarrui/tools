
require_relative '../lib/ruby-zen/params'

namespace :build do
  desc 'Build gem'
  task :gem do
    gemname = Params::GEMNAME
    puts "[INFO] Building #{gemname} gem..."

    system("rm #{gemname}-*.*.*.gem")
    system("gem build #{gemname}.gemspec")
  end

  desc 'Generate docs'
  task :docs do
    puts '[INFO] Generating documentation...'
    system('rm -r html/')
    system('yardoc lib/* -o html')
  end

  desc 'Build docker image'
  task :docker do
    dockername = "dvarrui/#{Params::NAME}"
    puts '[INFO] Building #{dockername} docker image...'
    system("docker rmi #{dockername}")
    system("docker build -t #{dockername} install/docker/")
  end

  desc 'Build all (gem and docs)'
  task :all do
    Rake::Task['build:gem'].invoke
    Rake::Task['build:docs'].invoke
  end
end
