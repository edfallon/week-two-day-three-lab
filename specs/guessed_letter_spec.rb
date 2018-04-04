require("minitest/autorun")
require("minitest/rg")

require_relative("../guessed_letter.rb")

class TestGuessedLetters < MiniTest::Test

def setup
  @guessed_letters = GuessedLetters.new()#character
end

def test_guessed_letters
  assert_equal([], @guessed_letters.all_guessed_letters)
end

def test_guess_one_letters
  @guessed_letters.guess("e")
  assert_equal(["e"], @guessed_letters.all_guessed_letters)
end

def test_guess_two_letters
  @guessed_letters.guess("e")
  @guessed_letters.guess("r")
  assert_equal(["e","r"], @guessed_letters.all_guessed_letters)
end



end#end of class
