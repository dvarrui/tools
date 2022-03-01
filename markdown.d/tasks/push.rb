
namespace :push do
  desc 'Push gem'
  task :gem do
    gemname = Version::GEMNAME
    puts "[INFO] Pushing gem..."
    system("gem push #{gemname}-*.*.*.gem")
  end

  desc 'Push docker'
  task :docker do
    dockername = Version::GEMNAME
    puts '[INFO] Pushing docker...'
    system("docker push #{dockername}")
  end

  desc 'Push all (gem and docker)'
  task :all do
    Rake::Task['push:gem'].invoke
    Rake::Task['push:docker'].invoke
  end
end
