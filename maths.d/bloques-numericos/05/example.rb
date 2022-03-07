#!/usr/bin/env ruby

require_relative 'panel'
require_relative 'pretty'

max = 3
max.times do |index|
  number = index + 1
  puts "[Panel #{number}] Inventarse un panel"
  panel = Panel.new
  panel.random_fill
  panel.calculate_sum
  Pretty.print panel

  puts "[Panel #{number}] Dejar algunos huecos."
  panel.put_holes
  Pretty.print panel
end
