#!/usr/bin/env ruby

require_relative 'panel'
require_relative 'pretty'

panel = Panel.new(4)

Pretty.print panel
