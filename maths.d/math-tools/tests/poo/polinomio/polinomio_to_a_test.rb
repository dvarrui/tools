#!/usr/bin/env ruby

require 'test/unit'
require_relative '../../../lib/poo/monomio'

class PooPolinomioToATest < Test::Unit::TestCase

  def setup
    @m = []
    @m << [ 5, -3, 0]
    @m << [ 6, -2, 0, 0 ]
    @m << [ 7, 0, 0, 0, -1]
    @m << [ 8, 0, -4, 0, 0, 1]
  end


  def test_polinomio0_to_a
    pol = Polinomio.new(@m[0])
    assert_equal [5,-3, 0], pol.to_a
  end

  def test_polinomio1_to_a
    pol = Polinomio.new(@m[1])
    assert_equal [6, -2, 0, 0], pol.to_a
  end

  def test_polinomio2_to_a
    pol = Polinomio.new(@m[2])
    assert_equal [7, 0, 0, 0, -1], pol.to_a
  end

  def test_polinomio3_to_a
    pol = Polinomio.new(@m[3])
    assert_equal [8, 0, -4, 0, 0, 1], pol.to_a
  end

end
