#!/usr/bin/env ruby

require_relative '../lib/func.1/polinomio'


puts "Polinomios a factorizar x³-x²-4"
poli = { 3 => 1, 2 => -1, 0 => -4 }
Polinomio.puts poli

puts "\nFactor 1: x-2"
fac1 = { 1 => 1, 0 => -2 }
Polinomio.puts fac1

puts "\nFactor 2: x²+x+2"
fac2 = { 2 => 1, 1 => 1, 0 => 2 }
Polinomio.puts fac2

puts "\nComprobamos que: poli = fac1 * fac2"
mul = Polinomio.mul(fac1, fac2)
Polinomio.puts mul
