
class Factor

  def self.factorize(number)
    factors = []

    divisor = 2
    while(number > 1)
      while (number % divisor).zero?
        factors << divisor
        number /= divisor
      end
      divisor += 1
    end

    factors
  end

end
