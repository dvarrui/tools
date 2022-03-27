#!/usr/bin/env ruby

require_relative '../lib/func.1/monomio'
require_relative '../lib/func.1/polinomio'


puts "[-] Polinomios a factorizar"
poli = [ [1,3], [-1,2], [-4,0] ]
Polinomio.puts_a_to_s poli

puts "[-] Factor 1"
fac1 = [ [1,1], [1,0]]
Polinomio.puts_a_to_s fac1

puts "[-] Factor 2"
fac2 = [ [-4,2], [3,0] ]
Polinomio.puts_a_to_s fac2
