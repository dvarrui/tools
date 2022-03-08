

class Panel
  attr_reader :data
  attr_reader :diagonal_ws2en

  def initialize
    @size = 4
    @data = []
    @size.times { @data <<= Array.new(@size, 0) }
    # Diagonal sum West-South to East-North
    @diagonal_ws2en = 0
  end

  def to_s
    @data.to_s
  end

  def random_fill
    max = 2
    for y in (0..max)
      for x in (0..max)
        # Número aleatorio entre 1 y 9
        @data[y][x] = rand(9) + 1
      end
    end
  end

  def calculate_sum
    calculate_rows_sum
    calculate_cols_sum
    calculate_diagonal_sum
    calculate_diagonal_sum_ws2en
  end

  def put_holes
    save = [ 0, 1, 2 ].shuffle!

    for y in 0..2
      for x in 0..2
        unless x == save[y]
          @data[y][x] = 0
        end
      end
    end
  end

  private

  def calculate_rows_sum
    @data.each do |row|
      row[3] = 0
      row[3] = row.sum
    end
  end

  def calculate_cols_sum
    for x in 0..2
      numbers = []
      for y in 0..2
        numbers << @data[y][x]
      end
      @data[3][x] = numbers.sum
    end
  end

  def calculate_diagonal_sum
    numbers = []
    for xy in 0..2
      numbers << @data[xy][xy]
    end
    @data[3][3] = numbers.sum
  end

  def calculate_diagonal_sum_ws2en
    numbers = []
    for y in 0..2
      x = 2 - y
      numbers << @data[y][x]
    end
    @diagonal_ws2en = numbers.sum
  end
end
