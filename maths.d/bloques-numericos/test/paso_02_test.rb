#!/usr/bin/env ruby

require 'minitest/autorun'

class Paso02 < Minitest::Test
  def test_example02
    puts File.basename(__FILE__)
    ok = system("../02/example.rb")
    assert_equal 0, $?.exitstatus
  end
end
