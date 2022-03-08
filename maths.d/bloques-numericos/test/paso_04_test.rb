#!/usr/bin/env ruby

require 'minitest/autorun'

class Paso04 < Minitest::Test
  def test_example04
    ok = system("../04/example.rb")
    assert_equal 0, $?.exitstatus
  end
end
