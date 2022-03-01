
namespace :build do
  desc 'Build gem'
  task :gem do
    puts '[INFO] Building gem...'
    gemname = Version::GEMNAME
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
    puts '[INFO] Building docker image...'
    dockername = Version::DOCKERNAME
    system("docker rmi #{dockername}")
    system("docker build -t #{dockername} install/docker/")
  end

  desc 'Build all (gem and docs)'
  task :all do
    Rake::Task['build:gem'].invoke
    Rake::Task['build:docs'].invoke
  end
end
