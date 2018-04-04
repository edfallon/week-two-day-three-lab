require("minitest/autorun")
require("minitest/rg")

require_relative("../hidden_word.rb")
require_relative("../guessed_letter.rb")

class TestHiddenWord < MiniTest::Test

  def setup
    @hidden_word = HiddenWord.new("elephant")
    @guessed_letter = GuessedLetter.new("e")
  end

  # def test_return_hidden_word__as__stars
  #   assert_equal("********", @hidden_word.return_word("*"))
  # end

  def test_guessing_letter
    # @hidden_word.guess(@guessed_letter)
    assert_equal("e*e*****", @hidden_word.return_word(@guessed_letter))
  end
end #end of class
