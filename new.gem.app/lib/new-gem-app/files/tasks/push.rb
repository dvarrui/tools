# frozen_string_literal: true

namespace :push do
  desc 'Push gem'
  task :gem do
    puts '[ info ] Pushing gem...'
    system("gem push #{Version::NAME}-*.*.*.gem")
  end

  desc 'Push docker'
  task :docker do
    puts '[ info ] Pushing docker...'
    system("docker push #{Version::AUTHOR}/#{Version::GEM}")
  end

  desc 'Push all (gem and docker)'
  task :all do
    Rake::Task['push:gem'].invoke
    Rake::Task['push:docker'].invoke
  end
end
