
namespace :push do
  desc 'Push gem'
  task :gem do
    puts '[INFO] Pushing gem...'
    system("gem push #{Params::GEMNAME}-#{Params::VERSION}.gem")
  end

  desc 'Push docker'
  task :docker do
    puts '[INFO] Pushing docker...'
    system('docker push dvarrui/teuton-get')
  end

  desc 'Push all (gem and docker)'
  task :all do
    Rake::Task['push:gem'].invoke
    Rake::Task['push:docker'].invoke
  end
end
