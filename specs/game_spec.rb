require("minitest/autorun")
require("minitest/rg")

require_relative("../guessed_letter.rb")
require_relative("../hidden_word.rb")
require_relative("../player.rb")
require_relative("../game.rb")

class TestGame < MiniTest::Test

def setup
  @guessed_letters = GuessedLetters.new()
  @hidden_word = HiddenWord.new("hello")
  @player = Player.new("Larry")
  @letter = "e"

  @game = Game.new(@player, @hidden_word, @guessed_letters)
end

def test_player
  assert_equal(@player, @game.player)
end

def test_hidden_word
  assert_equal(@hidden_word, @game.hidden_word)
end

def test_guessed_letters
  assert_equal(@guessed_letters, @game.guessed_letters)
end

def test_guessing_one_letter
  guess = @game.guess_letter(@letter)
  assert_equal("*e***", guess)
end



end #end of class
