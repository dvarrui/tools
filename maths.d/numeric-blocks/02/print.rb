
class Print
  def self.table(panel)
    puts format(panel)
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
    output = ''
    row.each { |col| output += pretty_col(col) }
    output
  end

  def self.colorize(panel)
  end
end
