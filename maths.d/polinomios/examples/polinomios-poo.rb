#!/usr/bin/env ruby

require_relative '../lib/poo/monomio'
require_relative '../lib/poo/polinomio'

m = Monomio.new(4,3)

puts "[info] Monomio 4,3"
p m
puts m
puts m.to_h

puts "[info] Polinomio 3,0,-5"
p = Polinomio.new( [3, 0, -5] )
puts p
puts p.to_h
