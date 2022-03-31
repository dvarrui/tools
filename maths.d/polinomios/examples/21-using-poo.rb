#!/usr/bin/env ruby

require_relative '../lib/poo/polinomio'

puts '=' * 20
pol1 = Polinomio.new( [1, 0, 2] )
pol2 = Polinomio.new( [1, 0, -2] )

puts "Polinomios"
puts pol1
puts pol2

puts "\nSuma"
puts pol1 + pol2

puts "\nResta"
puts pol1 - pol2

puts "\nMuliplicación"
puts pol1 * pol2
