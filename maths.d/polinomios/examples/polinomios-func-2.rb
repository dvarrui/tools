#!/usr/bin/env ruby

require_relative '../lib/func.1/monomio'
require_relative '../lib/func.1/polinomio'


puts "[-] Polinomios a factorizar x³-x²-4"
poli = { 3 => 1, 2 => -1, 0 => -4 }
Polinomio.puts_h_to_s poli

puts "[-] Factor 1: x-2"
fac1 = { 1 => 1, 0 => -2 }
Polinomio.puts_h_to_s fac1

puts "[-] Factor 2: x²+x+2"
fac2 = { 2 => 1, 1 => 1, 0 => 2 }
Polinomio.puts_h_to_s fac2

puts "[-] Comprobamos que: poli = fac1 * fac2"
mul = Polinomio.mul(fac1, fac2)
Polinomio.puts_h_to_s mul
