#encoding: utf-8

$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)

name = "japones-tool"
require "#{name}/version"

Gem::Specification.new name, JaponesTool::VERSION do |s|
  s.summary     = "Aprender japonés"
  s.email       = "dvarrui@protonmail.com"
  s.homepage    = JaponesTool::HOMEPAGE
  s.authors     = ["David Vargas Ruiz"]
  s.files       = `git ls-files`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.license     = "GPL-3"

  s.add_runtime_dependency "colorize"
end
