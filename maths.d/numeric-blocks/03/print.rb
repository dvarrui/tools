
require 'colorize'

class Print
  def self.table(panel)
    table = format(panel)
    puts colorize(table, panel)
  end

  def self.format(panel)
    output = []
    panel.data.each { |row| output << pretty_row(row) }
    output
  end

  def self.pretty_col(col)
    " %2d" % col
  end

  def self.pretty_row(row)
    output = []
    row.each { |col| output << pretty_col(col) }
    output
  end

  def self.colorize(table, panel)
    output = []
    max = table.size - 1
    for y in 0..max
      row = ''
      for x in 0..max
        value = table[y][x]
        if panel.getxy(x,y).zero?
          col = value.white
        elsif panel.getxy_static(x,y)
          col = value.cyan
        else
          col = value.red_ligth
        end
        row += col
      end
      output << row
    end
    output
  end
end
