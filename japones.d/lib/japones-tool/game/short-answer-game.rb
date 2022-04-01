#!/usr/bin/env ruby

require_relative '../debug'
require_relative '../hiragana'

class ShortAnswerGame

  def self.run
    Hiragana.show_help

    Debug.puts_line
    keys = Hiragana.group1.keys
    score = 1
    max = 10
    while score < max
      keys.shuffle!
      keys.each do |key|
        japanise = Hiragana.group1[key]
        progress = "[ #{score}/#{max} ]"
        print  "#{progress.white} #{japanise.light_yellow} ? "
        resp = STDIN.gets.chomp
        exit if resp.empty?
        if resp == key.to_s
          score += 1
        else
          puts "La respuesta es #{key}".light_red
        end
      end
    end
  end
end
