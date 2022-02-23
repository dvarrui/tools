require 'date'
require_relative 'tasks/params'

Gem::Specification.new do |s|
  s.name        = Params::GEMNAME
  s.version     = Params::VERSION
  s.date        = Date.today.strftime("%Y-%m-%d")
  s.summary     = "Muestra las reglas del ZEN de Ruby"
  s.description = <<-EOF
    Muestra las reglas del ZEN de Ruby
  EOF

  s.extra_rdoc_files = [ 'README.md', 'LICENSE' ] +
                       Dir.glob(File.join('docs','**','*.md'))

  s.license     = 'GPL-3.0'
  s.authors     = ['David Vargas Ruiz']
  s.email       = 'dvarrui@protonmail.com'
  s.homepage    = Params::HOMEPAGE

  s.executables << Params::NAME
  s.files       = Dir.glob(File.join('lib', '**', '*.*'))

  s.required_ruby_version = '>= 3.0.3'

  s.add_runtime_dependency 'ruby-zen', '~> 0.3'
end
