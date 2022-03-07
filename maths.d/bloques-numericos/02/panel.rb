

class Panel
  attr_reader :data

  def initialize(size)
    @size = size
    @data = []
    size.times { @data <<= Array.new(@size, 0) }
  end

  def to_s
    @data.to_s
  end

  def random_fill
    max = @size - 2
    for y in (0..max)
      for x in (0..max)
        # Número aleatorio entre 1 y 9
        @data[y][x] = rand(9) + 1
      end
    end
  end
end
