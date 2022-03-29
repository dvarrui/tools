#!/usr/bin/env ruby

require 'test/unit'
require_relative '../../../lib/poo/monomio'

class PooPolinomioToSTest < Test::Unit::TestCase

  def setup
    @m = []
    @m << [ 5, -3, 0 ]
    @m << [ 6, -2, 0, 0 ]
    @m << [ 7, 0, 0, 0, -1]
    @m << [ 8, 0, -4, 0, 0, 1]
  end

  def test_pol0_to_s
    pol = Polinomio.new(@m[0])
    assert_equal "+5x^2-3x", pol.to_s
  end

  def test_pol1_to_s
    pol = Polinomio.new(@m[1])
    assert_equal "+6x^3-2x^2", pol.to_s
  end

  def test_pol2_to_s
    pol = Polinomio.new(@m[2])
    assert_equal "+7x^4-1", pol.to_s
  end

  def test_pol3_to_s
    pol = Polinomio.new(@m[3])
    assert_equal "+8x^5-4x^3+1", pol.to_s
  end

end
