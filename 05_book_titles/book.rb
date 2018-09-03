class Book
  # Rudi Boshoff
  attr_reader :title
  # Rspec needs to be able to see the title variable

  def title=(book_title)
    little_words = %w{a an and the in of for}
    title = book_title.split.map do |word|
      if little_words.include? word
        word
      else
        word = word[0].upcase + word[1..-1]
      end
    end.join(' ')

    if title[0] == title[0].downcase
      title = title[0].upcase + title[1..-1]
    end
    @title = title
  end

end
