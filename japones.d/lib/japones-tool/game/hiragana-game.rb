#!/usr/bin/env ruby

require_relative '../debug'
require_relative '../hiragana'

Hiragana.show_help

keys = Hiragana.group1.keys
score = 1
max = 10
while score < max
  keys.shuffle!
  keys.each do |key|
    print "[ #{score}/#{max} ] #{Hiragana.group1[key]} ? "
    resp = STDIN.gets.chomp
    if resp == key.to_s
      score += 1
    else
      puts "La respuesta es #{key}"
    end
  end
end
