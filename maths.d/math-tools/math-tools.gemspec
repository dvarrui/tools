#encoding: utf-8

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

name = "math-tools"
require "#{name}/version"

Gem::Specification.new name, MathTools::VERSION do |s|
  s.summary     = "Utilidades para usar con polinomios"
  s.email       = "dvarrui@protonmail.com"
  s.homepage    = MathTools::HOMEPAGE
  s.authors     = ["David Vargas Ruiz"]
  s.files       = `git ls-files`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.license     = "GPL-3.0"

  s.add_runtime_dependency "colorize"
end
