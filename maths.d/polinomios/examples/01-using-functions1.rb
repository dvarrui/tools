#!/usr/bin/env ruby

require_relative '../lib/func.1/polinomio'

puts '=' * 20
pol1h = { 2 => 1, 1 => 0, 0 => 2 }
pol2h = { 2 => 1, 1 => 0, 0 => -2 }

puts "Polinomios"
Polinomio.puts pol1h
Polinomio.puts pol2h

puts "\nSuma"
sum = Polinomio.add(pol1h, pol2h)
Polinomio.puts sum

puts "\nResta"
del = Polinomio.del(pol1h, pol2h)
Polinomio.puts del

puts "\nMuliplicación"
pol1h = { 2 => 2, 1 => 0, 0 => 2 }
pol2h = { 2 => 0, 1 => 3, 0 => -1 }
mul = Polinomio.mul(pol1h, pol2h)

Polinomio.puts pol1h
Polinomio.puts pol2h
Polinomio.puts mul
