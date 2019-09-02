require 'test_helper'

class TestWindmills < Minitest::Test

  def setup
    @card = Terraforming::Cards.find_card(168)
    @game_state = Terraforming::GameState.new
  end

  def test_name
    assert_equal "Windmills", @card.name
  end

  def test_is_science
    assert !@card.science
  end

  def test_effect
    p = Terraforming::Player.new("Ben", 20)
    @card.play(@game_state, p)
    assert_equal(14, p.credits)
    assert_equal(2, p.energy_production)
  end

end