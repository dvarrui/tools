#!/usr/bin/env ruby 

def get_ostype
  return 'linux' if File.exist? "/home"
  
  output = `env | grep OSTYPE`.chmop
  return 'linux' if output == 'linux-gnu'
  return 'android' if output == 'linux-andriod'
 
  return 'windows' if File.exist? "C:\\Windows"
  return 'mac' if File.exist? "/Users"

  return 'unkown' 
end

puts get_ostype

