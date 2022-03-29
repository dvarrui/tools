#!/usr/bin/env ruby

require 'test/unit'
require_relative '../../../lib/poo/monomio'

class PooPolinomioTest < Test::Unit::TestCase

  def setup
    @p = []
    @p << Polinomio.new( [5, 0, 0, -3] )
    @p << Polinomio.new( [6, -2, 0] )
    @p << Polinomio.new( [7, 0, -1] )
    @p << Polinomio.new( [8, -4, 0, 0] )
  end

  def test_to_s
    p = @p
    assert_equal "+5x^3-3", p[0].to_s
    assert_equal "+6x^2-2x", p[1].to_s
    assert_equal "+7x^2-1", p[2].to_s
    assert_equal "+8x^3-4x^2", p[3].to_s
  end

  def test_to_h
    p = @p
    assert_equal ({ 3=>5, 2=>0, 1=>0, 0=>-3 }), p[0].to_h
    assert_equal ({ 2=>6, 1=>-2, 0=>0 }), p[1].to_h
    assert_equal ({ 2=>7, 1=>0,0=>-1 }), p[2].to_h
    assert_equal ({ 3=>8, 2=>-4, 1=>0, 0=>0 }), p[3].to_h
  end
end
