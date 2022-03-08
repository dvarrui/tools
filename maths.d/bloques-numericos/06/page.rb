
require_relative 'panel'
require_relative 'pretty'

class Page
  def self.create(max)

    max.times do |index|
      number = index + 1
      show_title(number)
      panel = create_new_random_panel
      Pretty.print panel

      panel = put_holes_into panel
      Pretty.print panel
    end
  end

  def self.show_title(number)
    puts ""
    puts "-------------------------"
    puts "[#{number}] Solución y enunciado\n"
  end

  def self.create_new_random_panel
    panel = Panel.new
    panel.random_fill
    panel.calculate_sum
    panel
  end

  def self.put_holes_into(panel)
    puts ""
    panel.put_holes
    panel
  end
end
