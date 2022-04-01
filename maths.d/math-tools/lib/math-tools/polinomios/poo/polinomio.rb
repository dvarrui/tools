
require_relative 'monomio'

class Polinomio
  attr_accessor :monomios

  def initialize(values = [])
    @values = values
    @monomios = prepare_input values
  end

  def to_h
    result = {}
    @monomios.each_pair { |key,monomio| result[key]=monomio.value }
    result
  end

  def to_a
    result = []
    max = @monomios.keys.sort.last
    (max..0).step(-1).each do |number|
      value = @monomios[number]&.value || 0
      result << value
    end
    result
  end

  def to_s
    output = ''
    @monomios.each_value do |mono|
      output += mono.to_s
    end
    output
  end

  def +(polinomio)
    result = {}
    polinomio.to_h.each_pair do |key, monomio|
      result[:key] = @monomios[key] + monomio
    end
    Polinomio.new(polinomio)
  end

  def -(polinomio)
    result = {}
    polinomio.to_h.each_pair do |key, monomio|
      result[:key] = @monomios[key] - monomio
    end
    Polinomio.new(polinomio)
  end

  def *(polinomio)
    result = {}
    polinomio.each_pair do |key, monomio|
      result[:key] = @monomios[key] - monomio
    end
    Polinomio.new(polinomio)
  end

  def /(monomio)
    value = @value / monomio.value
    xexp = @xexp - monomio.xexp
    Monomio.new(value, xexp)
  end

  private

  def prepare_input(values)
    output = {}
    max = values.size - 1
    values.each_with_index do |value, index|
      xexp = max - index
      output[xexp] = Monomio.new(value, xexp)
    end
    output
  end
end
