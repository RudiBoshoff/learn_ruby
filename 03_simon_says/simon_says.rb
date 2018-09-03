# Rudi Boshoff
def echo(message)
  message
end

def shout(message)
  message.upcase
end

def repeat(message, repetition = 1)
  sentence = ''

  for i in 1..repetition
    sentence += "#{message} "
  end

  if repetition == 1
    sentence = "#{message} #{message}"
  end
  sentence.strip
end

def start_of_word(word,position)
  letters = word.split(//)
  # splits each character into a separate element in an array
  position -= 1
  message = ''
  for i in 0..position
    message += letters[i]
  end
  message
end

def first_word(message)
  space = message.index(/\s/)
  # finds the space in the message (indicating the next word)
  space -= 1
  message[0..space]
end

def titleize(title)
  message = title.split.map(&:capitalize).join(' ')
  # caplitalizes each word after a " "
  sentence = message.tr('And', 'and').tr('The', 'the').tr('Over', 'over').tr('An', 'an')
  # replaces caplitalized small words
  if sentence[0..3] == 'the '
    sentence = sentence.sub('the ', 'The ')
  end
  sentence
end
