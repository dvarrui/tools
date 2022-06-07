# frozen_string_literal: true

require_relative "lib/iris/version"

Gem::Specification.new do |s|
  s.name        = 'iris'
  s.version     =  Iris::VERSION
  s.summary     = "Send message to Telegram Chat and Twitter account."
  s.email       = "dvarrui@protonmail.com"
  s.homepage    = Iris::HOMEPAGE
  s.authors     = ["David Vargas Ruiz"]
  s.files       = `git ls-files`.split("\n")
  s.executables = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.license     = "GPL-3"
  s.required_ruby_version = ">= 2.6.0"

  s.add_runtime_dependency 'colorize'
  s.add_runtime_dependency 'thor'
  s.add_runtime_dependency 'telegram-bot-ruby'
  s.add_runtime_dependency 'twitter'
end
