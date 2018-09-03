# Rudi Boshoff
def translate(input)
  input.split.map do |word|
    until word.start_with?('a', 'e', 'i', 'o', 'u')
      if word.start_with?('qu')
        word = word[2..-1] + 'qu'
      else
        word = word[1..-1] + word[0]
      end
    end
    word += 'ay'
  end.join(' ')
end
