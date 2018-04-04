class HiddenWord

def initialize(word)

  @word = word

end

def word()
  return @word
end

def return_word(guessed_letter)
  split_word = @word.split(//)
  for character in guessed_letter.all_guessed_letters()
  for letter in split_word
    if letter != guessed_letter.character
      letter.replace("*")
    end
  end
end

  return split_word.join

end

# def return_word()
#   return @guessed_word
# end


# def word()
#   return @word
# end

end# end of class
