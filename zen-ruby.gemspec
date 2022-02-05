require 'date'
require_relative 'lib/ruby-zen/application'

Gem::Specification.new do |s|
  s.name        = Params::GEMNAME
  s.version     = Params::VERSION
  s.date        = Date.today.strftime("%Y-%m-%d")
  s.summary     = "Display Ruby ZEN rules"
  s.description = <<-EOF
    Display Ruby ZEN rules.
  EOF

  s.extra_rdoc_files = [ 'README.md', 'LICENSE' ] +
                       Dir.glob(File.join('docs','**','*.md'))

  s.license     = 'GPL-3.0'
  s.authors     = ['David Vargas Ruiz']
  s.email       = 'dvarrui@protonmail.com'
  s.homepage    = 'https://github.com/dvarrui/ruby-zen/tree/master'

  s.executables << Params::NAME
  s.files       = Dir.glob(File.join('lib', '**', '*.*'))

  s.required_ruby_version = '>= 3.0.3'

  s.add_runtime_dependency 'colorize', '~> 0.8'
  s.add_runtime_dependency 'thor', '~> 1.1'

  s.add_development_dependency 'minitest', '~> 5.11'
end
