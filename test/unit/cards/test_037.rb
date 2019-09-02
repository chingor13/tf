require 'test_helper'

class TestNitrogenRichAsteroid < Minitest::Test

  def setup
    @card = Terraforming::Cards.find_card(37)
    @game_state = Terraforming::GameState.new
  end

  def test_name
    assert_equal "Nitrogen-Rich Asteroid", @card.name
  end

  def test_gives_4_leaf_production_if_has_3_leaf
    p = Terraforming::Player.new("Ben", 100)
    leaf_card = Terraforming::Cards.find_card(96)
    leaf_card.play(@game_state, p)
    leaf_card.play(@game_state, p)
    leaf_card.play(@game_state, p)
    @card.play(@game_state, p)

    assert 5, p.plants_production
  end

  def test_gives_1_leaf_production_if_has_less_than_3_leaf
    p = Terraforming::Player.new("Ben", 100)
    leaf_card = Terraforming::Cards.find_card(96)
    leaf_card.play(@game_state, p)
    leaf_card.play(@game_state, p)
    @card.play(@game_state, p)

    assert 2, p.plants_production
  end
end