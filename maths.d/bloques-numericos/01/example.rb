#!/usr/bin/env ruby

require_relative 'panel'
require_relative 'print'

panel = Panel.new(4)

Print.table panel
