
namespace :push do
  desc 'Push gem'
  task :gem do
    puts '[INFO] Pushing gem...'
    system("gem push #{Params::GEMNAME}-#{Params::VERSION}.gem")
  end
end
