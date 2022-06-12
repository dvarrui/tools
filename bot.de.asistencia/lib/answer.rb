
class Answer

  def initialize(filename)
    @faq = YAML.load(File.read(filename))[:questions]

    #require 'debug'; binding.break
    @faq.each_with_index do |faq, index|
      words = faq['tags']&.split(',') || []
      words.map! { _1.strip.downcase }
      faq[:tags] = words
      faq[:id] = index
    end
  end

  def to(input)
    puts "<=== #{input}"
    text = response(input)
    puts "===> #{text}"
    return text
  end

  private

  def response(input)
    output = "No tengo respuesta. ¡Lo siento!"

    #require 'debug'; binding.break
    words = input.split.map!(&:downcase)
    select = { score: 0, faq: nil }
    @faq.each do |faq|
      score = 0
      words.each { |word| score +=1 if faq[:tags].include? word }
      if score > select[:score]
        select[:score] = score
        select[:faq] = faq
      end
    end

    unless select[:faq].nil?
      output = "#{select[:faq][:a]} /#{select[:faq][:id]}"
    end
    output
  end

end
