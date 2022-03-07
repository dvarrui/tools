#!/usr/bin/env ruby

require_relative 'panel'

panel = Panel.new(4)

# Enunciado
#  0  0  0  14
#  0  9  0  19
#  0  9  1  17
# 13 21 16  12

puts "[INFO] Panel con el enunciado en una matriz."

panel.sety(0, [0, 0, 0, 14])
panel.sety(1, [0, 9, 0, 19])
panel.sety(2, [0, 9, 1, 17])
panel.sety(3, [13, 21, 16, 12])

puts panel

# Solución
#  2  3  9  14
#  4  9  6  19
#  7  9  1  17
# 13 21 16  12
