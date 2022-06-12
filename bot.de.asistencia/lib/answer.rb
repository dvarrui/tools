
class Answer

  def initialize(faq)
    @faq = faq
    #require 'debug'; binding.break
    @faq.each_with_index do |faq, index|
      faq[:tags] = faq['tags']&.split(',') || []
      faq[:index] = index
      faq[:q] = faq['q']
      faq[:a] = faq['a']
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
    "¿Me estás preguntando por '#{input}'?"
    ouput = "No tengo respuesta. ¡Lo siento!"

    words = input.split
    select = { score: 0, faq: nil }
    @faq.each do |faq|
      score = 0
      words.each { |word| score +=1 if faq[:tags].include? word }
      select[:faqid] = faq[:id]
      if score > select[:score]
        select[:score] = score
        select[:faq] = faq
      end
    end

    output = select[:faq][:a] if select[:score] > 0
    require 'debug'; binding.break
    output
  end

end
