#!/usr/bin/env ruby 

def get_ostype

  begin  
    output = `env | grep OSTYPE`.chmop
  rescue
    output = nil 
  end 

  return 'android' if output == 'linux-android'
  return 'linux' if output == 'linux-gnu'

  return 'linux' if File.exist? "/home"
  return 'windows' if File.exist? "C:\\Windows"
  return 'mac' if File.exist? "/Users"

  return 'unkown' 
end

puts get_ostype

