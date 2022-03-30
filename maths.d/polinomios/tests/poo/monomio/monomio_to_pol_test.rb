#!/usr/bin/env ruby

require 'test/unit'
require_relative '../../../lib/poo/monomio'

class PooMonomioToPolTest < Test::Unit::TestCase

  def setup
    @m = []
    @m << [ Monomio.new(5, 2), Monomio.new(-3, 1), Monomio.new(0, 0) ]
    @m << [ Monomio.new(6, 3), Monomio.new(-2, 2), Monomio.new(0, 0) ]
    @m << [ Monomio.new(7, 4), Monomio.new(0, 2), Monomio.new(-1, 0) ]
    @m << [ Monomio.new(8, 5), Monomio.new(-4, 3), Monomio.new(1, 0) ]
  end

  def test_pol_neg_1
    mono = Monomio.new(-1,0)
    assert_equal [ -1 ], mono.to_a
    assert_equal "-1", mono.to_s
  end

end
