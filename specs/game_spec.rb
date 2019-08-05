require 'minitest/autorun'
require_relative '../models/game'

class TestGame < Minitest::Test

  def setup()
    @game = Game.new('rock', 'scissors')
  end


  def test_play
    assert_equal('Rock', @game.play())
  end

end
