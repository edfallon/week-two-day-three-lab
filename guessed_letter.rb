class GuessedLetters

def initialize()
  @guessed_array = []#empty array to store guesses
end


def all_guessed_letters()
  return @guessed_array# returns the letters that are stored in the array
end

def guess(letter)#takes in a guessed letter
  @guessed_array.push(letter)#and pushes it into the empty array
end

end #end of class
