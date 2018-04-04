class Game

def initialize(player, hidden_word, guessed_letters)

  @player = player
  @hidden_word =hidden_word
  @guessed_letters = guessed_letters

end

def player()
  return @player
end

def hidden_word()
  return @hidden_word
end

def guessed_letters()
  return @guessed_letters
end

def guess_letter(character)#this is the letter that is being guessed
  @guessed_letters.guess(character)#calling the guess method that pushes the guessed character into the array of guessed letters
  @hidden_word.return_word(@guessed_letters)#calling the method that checks off the guess letters and returns it showing only the revealed ones
end

end #end of class
