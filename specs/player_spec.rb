require("minitest/autorun")
require("minitest/rg")

require_relative("../player.rb")

class PlayerTest < MiniTest::Test

def setup
  @player = Player.new("Larry")
end

def test_name()
  assert_equal("Larry", @player.name)
end

def test_lives()
  assert_equal(6, @player.lives.count)
end 

end#end of class
