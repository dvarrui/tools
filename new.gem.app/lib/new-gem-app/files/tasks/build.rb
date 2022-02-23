
namespace :build do
  desc 'Build gem'
  task :gem do

    puts '[ INFO ] Building gem...'
    system("rm #{Version::GEM}-*.*.*.gem")
    system("gem build #{Version::GEM}.gemspec")
  end

  desc 'Generate docs'
  task :docs do
    puts '[ INFO ] Generating documentation...'
    system('rm -r html/')
    system('yardoc lib/* -o html')
  end

  desc 'Build docker image'
  task :docker do
    puts '[ INFO ] Building docker image...'
    system("docker rmi #{Version::AUTHOR}/#{Version::NAME}")
    system("docker build -t #{Version::AUTHOR}/#{Version::NAME} install/docker/")
  end

  desc 'Build all (gem and docs)'
  task :all do
    Rake::Task['build:gem'].invoke
    Rake::Task['build:docs'].invoke
  end
end
