#!/usr/bin/env ruby

require 'test/unit'
require_relative '../lib/factor.rb'

class TestFactor < Test::Unit::TestCase

  def test_factorize_1
    assert_equal [], Factor.factorize(1)
  end

  def test_factorize_2_to_3
    assert_equal [2], Factor.factorize(2)
    assert_equal [3], Factor.factorize(3)
  end

  def test_factorize_4_to_9
    assert_equal [2, 2], Factor.factorize(4)
    assert_equal [5], Factor.factorize(5)
    assert_equal [2, 3], Factor.factorize(6)
    assert_equal [7], Factor.factorize(7)
    assert_equal [2, 2, 2], Factor.factorize(8)
    assert_equal [3, 3], Factor.factorize(9)
    assert_equal [2, 5], Factor.factorize(10)
  end

  def test_factorize_x
    assert_equal [2, 5, 5, 7, 11, 11], Factor.factorize(2*5*5*7*11*11)
  end
end
