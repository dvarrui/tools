
namespace :build do
  desc 'Build gem'
  task :gem do
    gemname = Params::GEMNAME
    puts "[INFO] Building #{gemname} gem..."

    system("rm #{gemname}-*.*.*.gem")
    system("gem build #{gemname}.gemspec")
  end
end
