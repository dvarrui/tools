#!/usr/bin/env ruby 

def get_ostype
  type = 'linux' if File.exist? "/home" 
  type = 'windows' if File.exist? "C:\\Windows"
  type = 'mac' if File.exist? "/Users"

  return type 
end

puts get_ostype

