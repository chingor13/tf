require 'test_helper'

class TestBreathingFilters < Minitest::Test

  def setup
    @card = Terraforming::Cards.find_card(114)
    @game_state = Terraforming::GameState.new
  end

  def test_name
    assert_equal "Breathing Filters", @card.name
  end

  def test_credits_science
    p = Terraforming::Player.new("Ben", 20)
    assert_equal(0, p.tag_counts[:science])
    @card.play(@game_state, p)
    assert_equal(1, p.tag_counts[:science])
  end

end