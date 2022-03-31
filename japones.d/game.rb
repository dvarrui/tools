#!/usr/bin/env ruby

require_relative 'lib/debug'
require_relative 'lib/hiragana'

puts "[INFO] Repaso:\n\n"

Debug.puts Hiragana.group1
Debug.puts Hiragana.group2

keys = Hiragana.group1.keys
keys.shuffle!
score = 0
while score < 10
  keys.each do |key|
    print "[ Score #{score} ]#{Hiragana.group1[key]} = ? "
    resp = STDIN.gets.chomp
    if resp == key.to_s
      score += 1
    else
      puts "La respuesta es #{key}"
    end
  end
end
