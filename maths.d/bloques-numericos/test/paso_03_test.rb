#!/usr/bin/env ruby

require 'minitest/autorun'

class Paso03 < Minitest::Test
  def test_example03
    ok = system("../03/example.rb")
    assert_equal 0, $?.exitstatus
  end
end
