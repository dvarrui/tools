#!/usr/bin/env ruby

require 'minitest/autorun'

class Paso05 < Minitest::Test
  def test_example05
    ok = system("../05/example.rb")
    assert_equal 0, $?.exitstatus
  end
end
