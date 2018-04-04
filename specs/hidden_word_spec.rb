require("minitest/autorun")
require("minitest/rg")

require_relative("../hidden_word.rb")
require_relative("../guessed_letter.rb")

class TestHiddenWord < MiniTest::Test

  def setup
    @hidden_word = HiddenWord.new("elephant")
    @guessed_letters = GuessedLetters.new()
  end

  def test_guessing_letter
    @guessed_letters.guess("e")
    assert_equal("e*e*****", @hidden_word.return_word(@guessed_letters))
  end

  def test_if_guessed_letter__is__in__hidden__word
    @guessed_letters.guess("e")
    assert_equal(true, @hidden_word.search(@guessed_letters.all_guessed_letters[0]))
  end

end #end of class
