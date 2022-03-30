
require_relative 'polinomio'

class Monomio

  def initialize(value, xexp=0)
    @data = { value: value, xexp: xexp }
  end

  def value
    @data[:value]
  end

  def xexp
    @data[:xexp]
  end

  def to_a
    array = Array.new(xexp + 1, 0)
    array[0] = value
    array
  end

  def to_h
    { xexp => value }
  end

  def to_s
    return '' if value.zero?

    part2 = "x^#{xexp}"
    part2 = '' if xexp.zero?
    part2 = 'x' if xexp == 1

    part1 = "#{value}"
    part1 = "" if (value == 1)
    if part2 == ''
      part1 = "1" if value == 1
      part1 = "-1" if value == -1
    end
    part1 = "-" if (value == -1 and part2 != '')
    part1 = "+#{part1}" if (value > 0)

    part1 + part2
  end

  def to_pol
    p = Polinomio.new( [self.to_a])
  end

  def +(monomio)
    unless xexp == monomio.xexp
      raise '[FAIL] Los monomios no tienen igual exponente de x'
    end
    new_value = value + monomio.value
    Monomio.new(new_value, xexp)
  end

  def -(monomio)
    unless xexp == monomio.xexp
      raise '[FAIL] Los monomios no tienen igual exponente de x'
    end
    new_value = value - monomio.value
    Monomio.new(new_value, xexp)
  end

  def *(monomio)
    new_value = value * monomio.value
    new_xexp = xexp + monomio.xexp
    Monomio.new(new_value, new_xexp)
  end

  def /(monomio)
    new_value = value / monomio.value
    new_xexp = xexp - monomio.xexp
    Monomio.new(new_value, new_xexp)
  end
end
