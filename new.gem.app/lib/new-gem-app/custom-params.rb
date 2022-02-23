
class CustomParams

  def initialize
    @params = { name: 'NODATA',
                gem: 'NODATA',
                command: 'NODATA' }
  end

  def ask_user
    puts "[ info ] Your custom params"
    keys = @params.keys
    keys.each do |key|
      print " => #{key.to_s} ? "
      @params[key] = STDIN.gets.chomp
    end
    puts @params.to_s
  end
end
