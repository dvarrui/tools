
class Answer

  def initialize(faq)
    @faq = faq
  end

  def to(input)
    puts "<=== #{input}"
    text = "¿Me estás preguntando por '#{input}'?"
    puts "===> #{text}"
    return text
  end

  def response(input)
  end
end
