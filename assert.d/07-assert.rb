#!/usr/bin/env ruby

require_relative 'lib/debug' 

a = 2
b = 3
c = a * b

Debug::assert a == 2
Debug::assert b == 3

begin
  Debug::assert c == 5 
rescue 
  puts("[ ERROR ] Controlado!")
end
