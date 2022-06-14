
class Answer

  def initialize(filename)
    @faq = YAML.load(File.read(filename))[:questions]

    @faq.each_with_index do |faq, index|
      words = faq[:tags]&.split(',') || []
      words.map! { _1.strip.downcase }
      faq[:tags] = words
      faq[:q].split.each { faq[:tags] << _1 }
      faq[:id] = index
    end
  end

  def to(input)
    puts "<=== #{input}"
    if is_number?(input)
      text = find_answer_index input.to_i
    else
     text = respond(input)
    end
    puts "===> #{text}"
    return text
  end

  private

  def is_number?(input)
    input.to_i.to_s == input
  end

  def find_answer_index(index)
    return "Sólo tengo #{@faq.size - 1} respuestas!" if index >= @faq.size

    faq = @faq[index]
    output = "/#{faq[:id]} #{faq[:q]}: #{faq[:a]} "
  end

  def respond(input)
    words = input.split.map!(&:downcase)
    responses = filter_responses_with(words)
    return "No tengo respuesta. ¡Lo siento!" if responses.size.zero?

    faq = responses.first[:faq]
    score = responses.first[:score]
    if (score == words.size) # Exact answer
      output = "#{faq[:q]}: #{faq[:a]} /#{faq[:id]}"
    else
      if responses.size > 1
        output = "Tengo varías posibilidades:\n"
      else
        output = "No lo sé! Pero te puedo responder sobre:\n"
      end

      responses.each do |response|
        faq = response[:faq]
        output += "* /#{faq[:id]} => #{faq[:q]}\n"
      end
    end

    output
  end

  def filter_responses_with(words)
    responses = []
    @faq.each do |faq|
      score = 0
      words.each { |word| score +=1 if faq[:tags].include? word }
      next if score.zero?
      responses <<  { score: score, faq: faq }
    end
    responses.sort_by{ _1[0] }.reverse
  end
end
