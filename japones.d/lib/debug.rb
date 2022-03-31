
class Debug
  def self.puts(group)
    keys = group.keys
    keys = group.keys.map { |i| " #{i}" } if group.keys.first == :a

    STDOUT.puts group.values.join(' ')
    STDOUT.puts keys.join(' ')
    STDOUT.puts "\n"
  end
end
