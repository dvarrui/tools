
class Panel
  attr_reader :data

  def initialize(size)
    @data = []
    size.times { @data <<= Array.new(size, 0) }
  end

  def to_s
    @data.to_s
  end
end
