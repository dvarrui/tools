
require 'colorize'

class Pretty

  def self.print(panel)
    puts format(panel)
  end

  def self.format(panel)
    output = []
    panel.data.each { |row| output << pretty_row(row) }
    output
  end

  def self.pretty_row(row)
    output = ''
    row.each { |col| output += pretty_col(col) }
    output
  end

  def self.pretty_col(col)
    text = " %2d" % col
    return text.white if col.zero?
    text.cyan
  end

end
