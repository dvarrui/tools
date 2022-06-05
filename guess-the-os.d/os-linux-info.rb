#!/usr/bin/env ruby 

@os = { type: '?', distro: '?' }

def get_ostype
  output = `uname`.chomp
  @os[:type] = "linux" if output == 'Linux'
end

def get_osdistro
  output = `lsb_release -d`.chomp 
  items = output.split
  @os[:distro] = items[1]
  @os[:distro2] = items[2]
end 

def get_info
  get_ostype 
  get_osdistro
  return @os
end

puts get_info

