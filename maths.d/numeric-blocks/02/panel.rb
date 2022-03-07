
class Panel
  attr_reader :data, :size

  def initialize(size)
    @size = size
    
    row = Array.new(@size, 0)
    @data = Array.new(@size, row)
  end

  def to_s
    @data.to_s
  end

  def sety(y, values)
    @data[y] = values
  end
end
