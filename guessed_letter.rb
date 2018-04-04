class GuessedLetter

def initialize(character)
  @character = character.downcase
  @guessed_array = []
end

def character()
  return @character
end

def all_guessed_letters()
  @guessed_array.push(@character)
end

end #end of class
