class HiddenWord

def initialize(word)

  @word = word

end

def word()
  return @word
end

def return_word(guessed_letters)
  split_word = @word.split(//)#variable that stores the array of split letters
  for character in guessed_letters.all_guessed_letters()# loops through letters guessed so far
  for letter in split_word # checking every letter against each guessed letter
    if letter != character #comparing current letter of the hidden word with the current guessed letter
      letter.replace("*")#replacing non matching letters
    end
  end
end

  return split_word.join# put the word back together

end

def search(guessed_letter)
  split_word = @word.split(//)
   split_word.include?(guessed_letter)#does it include the letter that was guessed?
end

end# end of class
