require("minitest/autorun")
require("minitest/rg")

require_relative("../guessed_letter.rb")

class TestGuessedLetter < MiniTest::Test

def setup
  @guessed_letter = GuessedLetter.new("r")
end

def test_letter
  assert_equal("r", @guessed_letter.character)
end

def test_guessed_letters
  assert_equal(["r"], @guessed_letter.all_guessed_letters)
end

end#end of class
